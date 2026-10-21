.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_1
    const-string p1, "MSG_DRAW_FINISHED"

    .line 12
    .line 13
    return-object p1

    .line 14
    :pswitch_2
    const-string p1, "MSG_POINTER_CAPTURE_CHANGED"

    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_3
    const-string p1, "MSG_UPDATE_POINTER_ICON"

    .line 18
    .line 19
    return-object p1

    .line 20
    :pswitch_4
    const-string p1, "MSG_DISPATCH_WINDOW_SHOWN"

    .line 21
    .line 22
    return-object p1

    .line 23
    :pswitch_5
    const-string p1, "MSG_SYNTHESIZE_INPUT_EVENT"

    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_6
    const-string p1, "MSG_WINDOW_MOVED"

    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_7
    const-string p1, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    .line 30
    .line 31
    return-object p1

    .line 32
    :pswitch_8
    const-string p1, "MSG_PROCESS_INPUT_EVENTS"

    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_9
    const-string p1, "MSG_UPDATE_CONFIGURATION"

    .line 36
    .line 37
    return-object p1

    .line 38
    :pswitch_a
    const-string p1, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_b
    const-string p1, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_c
    const-string p1, "MSG_DISPATCH_DRAG_EVENT"

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_d
    const-string p1, "MSG_CLOSE_SYSTEM_DIALOGS"

    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_e
    const-string p1, "MSG_CHECK_FOCUS"

    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_f
    const-string p1, "MSG_DISPATCH_KEY_FROM_IME"

    .line 54
    .line 55
    return-object p1

    .line 56
    :pswitch_10
    const-string p1, "MSG_DISPATCH_GET_NEW_SURFACE"

    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_11
    const-string p1, "MSG_DISPATCH_APP_VISIBILITY"

    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_12
    const-string p1, "MSG_DISPATCH_INPUT_EVENT"

    .line 63
    .line 64
    return-object p1

    .line 65
    :pswitch_13
    const-string p1, "MSG_WINDOW_FOCUS_CHANGED"

    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_14
    const-string p1, "MSG_RESIZED_REPORT"

    .line 69
    .line 70
    return-object p1

    .line 71
    :pswitch_15
    const-string p1, "MSG_RESIZED"

    .line 72
    .line 73
    return-object p1

    .line 74
    :pswitch_16
    const-string p1, "MSG_DIE"

    .line 75
    .line 76
    return-object p1

    .line 77
    :pswitch_17
    const-string p1, "MSG_INVALIDATE_RECT"

    .line 78
    .line 79
    return-object p1

    .line 80
    :pswitch_18
    const-string p1, "MSG_INVALIDATE"

    .line 81
    .line 82
    return-object p1

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 2
    :pswitch_1
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    goto/16 :goto_9

    .line 3
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move v4, v5

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1, v4}, Landroid/view/ViewRootImpl;->access$1200(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_9

    .line 5
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    .line 6
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->access$1500(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    goto/16 :goto_9

    .line 7
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    .line 8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 9
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewRootImpl;->handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    goto/16 :goto_9

    .line 10
    :pswitch_5
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    goto/16 :goto_9

    .line 11
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/InputEvent;

    .line 12
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, v3, v2, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_9

    .line 13
    :pswitch_7
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_19

    .line 14
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 15
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 16
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 17
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 18
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    .line 19
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 20
    iput p1, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    .line 21
    iput p1, v4, Landroid/graphics/Rect;->bottom:I

    .line 22
    iget-object p1, v3, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 23
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    goto/16 :goto_9

    .line 24
    :pswitch_8
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_9

    .line 26
    :pswitch_9
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_9

    .line 27
    :pswitch_a
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v4, p1, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto/16 :goto_9

    .line 29
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/Configuration;

    .line 30
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 31
    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 34
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 35
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 36
    invoke-virtual {v0, p1, v2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 37
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->access$1400(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v0

    invoke-static {p1, v0, v4, v1}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V

    goto/16 :goto_9

    .line 38
    :pswitch_c
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    goto/16 :goto_9

    .line 39
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/DragEvent;

    .line 40
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v0, p1, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->access$1300(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    goto/16 :goto_9

    .line 42
    :pswitch_e
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 44
    :pswitch_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 45
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_9

    .line 46
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    .line 47
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-static {p1, v0}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    .line 49
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, v3, v5, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_9

    .line 50
    :pswitch_11
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto/16 :goto_9

    .line 51
    :pswitch_12
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto/16 :goto_9

    .line 52
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 53
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    .line 54
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputEventReceiver;

    .line 55
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 56
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_9

    .line 57
    :pswitch_14
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_19

    .line 58
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_0

    :cond_4
    move v1, v4

    .line 59
    :goto_0
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v6, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 60
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;Z)V

    if-eqz v1, :cond_8

    .line 61
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_1

    :cond_5
    move v0, v4

    .line 62
    :goto_1
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6, v0}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;Z)Z

    .line 63
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v6, :cond_8

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 64
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v5, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 65
    :try_start_0
    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_6

    .line 66
    iget-object v3, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    :cond_6
    move-object v11, v3

    .line 67
    iget-object v9, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v9, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget v7, v0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v8, v0, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual/range {v6 .. v11}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 68
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->access$1000(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OutOfResourcesException locking surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :try_start_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v0}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 70
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1000(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No processes killed for memory; killing self"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :catch_1
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 73
    :cond_8
    :goto_2
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 74
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    iput-boolean v0, p1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 75
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 76
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, p1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v0, :cond_9

    invoke-static {p1}, Landroid/view/ViewRootImpl;->access$1100(Landroid/view/ViewRootImpl;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 77
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 78
    :cond_9
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 79
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {p1}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 80
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 81
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 82
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->hideTooltip()V

    :cond_a
    if-eqz v1, :cond_c

    if-eqz v6, :cond_b

    .line 84
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, p1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v0, :cond_b

    invoke-static {p1}, Landroid/view/ViewRootImpl;->access$1100(Landroid/view/ViewRootImpl;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 85
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean p1, p1, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    xor-int/lit8 v10, p1, 0x1

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 86
    :cond_b
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 87
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 88
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v5, p1, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    goto :goto_3

    .line 89
    :cond_c
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, p1, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-eqz v0, :cond_d

    .line 90
    invoke-static {p1, v4}, Landroid/view/ViewRootImpl;->access$1200(Landroid/view/ViewRootImpl;Z)V

    :cond_d
    :goto_3
    const-string p1, "persist.sys.uiautomator"

    .line 91
    invoke-static {p1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "For UiAutomator Current window is focused: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", AM is Enable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mView+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewRootImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_19

    if-eqz v1, :cond_19

    .line 94
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_9

    .line 95
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 96
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 97
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 98
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 99
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 100
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 101
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    .line 102
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-nez v2, :cond_e

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-nez v2, :cond_e

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 103
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v2, v0, :cond_e

    goto/16 :goto_9

    .line 104
    :cond_e
    :pswitch_16
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_19

    .line 105
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 106
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 107
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Landroid/util/MergedConfiguration;

    .line 108
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eq v0, v3, :cond_f

    move v0, v5

    goto :goto_4

    :cond_f
    move v0, v4

    .line 109
    :goto_4
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 110
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_10

    move v1, v3

    :cond_10
    invoke-static {v7, v6, v4, v1}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V

    goto :goto_5

    :cond_11
    if-eqz v0, :cond_12

    .line 111
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 112
    :cond_12
    :goto_5
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 113
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 114
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 115
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 116
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 117
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_6

    :cond_13
    move v0, v4

    goto :goto_7

    :cond_14
    :goto_6
    move v0, v5

    .line 118
    :goto_7
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 119
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 120
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 121
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 122
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 123
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 124
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 125
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v3, :cond_15

    move v3, v5

    goto :goto_8

    :cond_15
    move v3, v4

    :goto_8
    iput-boolean v3, v1, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 126
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v3, :cond_16

    move v4, v5

    :cond_16
    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    .line 127
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 128
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_17

    .line 129
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)V

    .line 130
    :cond_17
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object p1, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz p1, :cond_18

    if-eqz v0, :cond_18

    .line 131
    invoke-static {p1}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/View;)V

    .line 132
    :cond_18
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto :goto_9

    .line 133
    :pswitch_17
    iget-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->doDie()V

    goto :goto_9

    .line 134
    :pswitch_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 135
    iget-object v0, p1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v1, p1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v2, p1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v3, p1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v4, p1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 136
    invoke-virtual {p1}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_9

    .line 137
    :pswitch_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_19
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 13
    .line 14
    const-string p2, "Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:"

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method
