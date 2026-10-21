.class public Lcom/android/internal/view/a;
.super Lcom/android/internal/view/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/a$a;,
        Lcom/android/internal/view/a$b;
    }
.end annotation


# static fields
.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REPORT_FULLSCREEN_MODE:I = 0x64

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field public static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mInputConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/b$a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p1, p0, Lcom/android/internal/view/a;->mMainLooper:Landroid/os/Looper;

    .line 4
    new-instance p2, Lcom/android/internal/view/a$a;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/view/a$a;-><init>(Lcom/android/internal/view/a;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/internal/view/a;->mH:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    const/16 v0, 0x5a

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/internal/view/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2

    const/16 v0, 0x82

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/a;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    const/16 v0, 0x37

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/a;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    const/16 v0, 0x38

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/a;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1

    const/16 v0, 0x32

    .line 1
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/a;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1

    const/16 v0, 0x50

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/a;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/a;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->executeMessage(Landroid/os/Message;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/a;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    const/16 v0, 0x5f

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/internal/view/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "IInputConnectionWrapper"

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p1, "setComposingText on inactive InputConnection"

    .line 6
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    return-void

    :cond_3
    :goto_1
    const-string p1, "performContextMenuAction on inactive InputConnection"

    .line 10
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    return-void

    :cond_5
    :goto_2
    const-string p1, "performEditorAction on inactive InputConnection"

    .line 14
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    return-void

    :cond_7
    :goto_3
    const-string/jumbo p1, "setSelection on inactive InputConnection"

    .line 18
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 19
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 21
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/CorrectionInfo;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    return-void

    :cond_9
    :goto_4
    const-string p1, "commitCorrection on inactive InputConnection"

    .line 22
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    .line 25
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    return-void

    :cond_b
    :goto_5
    const-string p1, "commitCompletion on inactive InputConnection"

    .line 26
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 27
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_d

    .line 28
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    .line 29
    :cond_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    return-void

    :cond_d
    :goto_6
    const-string p1, "clearMetaKeyStates on inactive InputConnection"

    .line 30
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 31
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_f

    .line 32
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_7

    .line 33
    :cond_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/view/a$b;

    .line 34
    iget-object v1, p1, Lcom/android/internal/view/a$b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/view/a$b;->b:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void

    :cond_f
    :goto_7
    const-string p1, "performPrivateCommand on inactive InputConnection"

    .line 35
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 36
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_12

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_8

    .line 38
    :cond_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_11

    move v1, v2

    :cond_11
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    return-void

    :cond_12
    :goto_8
    const-string/jumbo p1, "showStatusIcon on inactive InputConnection"

    .line 39
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 40
    :sswitch_3
    iget-object p1, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputConnection;

    if-eqz p1, :cond_14

    .line 41
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_9

    .line 42
    :cond_13
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void

    :cond_14
    :goto_9
    const-string p1, "endBatchEdit on inactive InputConnection"

    .line 43
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :sswitch_4
    iget-object p1, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputConnection;

    if-eqz p1, :cond_16

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_a

    .line 46
    :cond_15
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    return-void

    :cond_16
    :goto_a
    const-string p1, "beginBatchEdit on inactive InputConnection"

    .line 47
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_18

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_b

    .line 50
    :cond_17
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    return-void

    :cond_18
    :goto_b
    const-string p1, "deleteSurroundingText on inactive InputConnection"

    .line 51
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_1a

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_c

    .line 54
    :cond_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void

    :cond_1a
    :goto_c
    const-string/jumbo p1, "sendKeyEvent on inactive InputConnection"

    .line 55
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :sswitch_7
    iget-object p1, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputConnection;

    if-nez p1, :cond_1b

    const-string p1, "finishComposingText on inactive InputConnection"

    .line 57
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_1b
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    return-void

    .line 59
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_1d

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_d

    .line 61
    :cond_1c
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    return-void

    :cond_1d
    :goto_d
    const-string/jumbo p1, "setComposingRegion on inactive InputConnection"

    .line 62
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_1f

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_e

    .line 65
    :cond_1e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    return-void

    :cond_1f
    :goto_e
    const-string p1, "commitText on inactive InputConnection"

    .line 66
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/a$b;

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_21

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_f

    .line 70
    :cond_20
    iget-object v2, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    iget-object v4, v0, Lcom/android/internal/view/a$b;->a:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/ExtractedTextRequest;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v4, p1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    iget v0, v0, Lcom/android/internal/view/a$b;->d:I

    invoke-interface {v2, p1, v0}, Lcom/android/internal/view/c;->B0(Landroid/view/inputmethod/ExtractedText;I)V

    goto :goto_10

    :cond_21
    :goto_f
    const-string p1, "getExtractedText on inactive InputConnection"

    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    iget v0, v0, Lcom/android/internal/view/a$b;->d:I

    invoke-interface {p1, v2, v0}, Lcom/android/internal/view/c;->B0(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Got RemoteException calling setExtractedText"

    .line 73
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void

    .line 74
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/a$b;

    .line 75
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_23

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_11

    .line 77
    :cond_22
    iget-object v1, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result p1

    iget v0, v0, Lcom/android/internal/view/a$b;->d:I

    invoke-interface {v1, p1, v0}, Lcom/android/internal/view/c;->x1(II)V

    goto :goto_12

    :cond_23
    :goto_11
    const-string p1, "getCursorCapsMode on inactive InputConnection"

    .line 78
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    iget v0, v0, Lcom/android/internal/view/a$b;->d:I

    invoke-interface {p1, v1, v0}, Lcom/android/internal/view/c;->x1(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "Got RemoteException calling setCursorCapsMode"

    .line 80
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void

    .line 81
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/a$b;

    .line 82
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_25

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_13

    .line 84
    :cond_24
    iget-object v2, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget v0, v0, Lcom/android/internal/view/a$b;->d:I

    invoke-interface {v2, p1, v0}, Lcom/android/internal/view/c;->p1(Ljava/lang/CharSequence;I)V

    goto :goto_14

    :cond_25
    :goto_13
    const-string p1, "getSelectedText on inactive InputConnection"

    .line 85
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    iget v0, v0, Lcom/android/internal/view/a$b;->d:I

    invoke-interface {p1, v2, v0}, Lcom/android/internal/view/c;->p1(Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string v0, "Got RemoteException calling setSelectedText"

    .line 87
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void

    .line 88
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/a$b;

    .line 89
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_27

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_15

    .line 91
    :cond_26
    iget-object v2, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v4, p1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget v0, v0, Lcom/android/internal/view/a$b;->d:I

    invoke-interface {v2, p1, v0}, Lcom/android/internal/view/c;->f1(Ljava/lang/CharSequence;I)V

    goto :goto_16

    :cond_27
    :goto_15
    const-string p1, "getTextBeforeCursor on inactive InputConnection"

    .line 92
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    iget v0, v0, Lcom/android/internal/view/a$b;->d:I

    invoke-interface {p1, v2, v0}, Lcom/android/internal/view/c;->f1(Ljava/lang/CharSequence;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p1

    const-string v0, "Got RemoteException calling setTextBeforeCursor"

    .line 94
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void

    .line 95
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/a$b;

    .line 96
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/view/a;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_29

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/view/a;->isActive()Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_17

    .line 98
    :cond_28
    iget-object v2, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v4, p1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget v0, v0, Lcom/android/internal/view/a$b;->d:I

    invoke-interface {v2, p1, v0}, Lcom/android/internal/view/c;->E(Ljava/lang/CharSequence;I)V

    goto :goto_18

    :cond_29
    :goto_17
    const-string p1, "getTextAfterCursor on inactive InputConnection"

    .line 99
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    iget v0, v0, Lcom/android/internal/view/a$b;->d:I

    invoke-interface {p1, v2, v0}, Lcom/android/internal/view/c;->E(Ljava/lang/CharSequence;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v0, "Got RemoteException calling setTextAfterCursor"

    .line 101
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_e
        0x14 -> :sswitch_d
        0x19 -> :sswitch_c
        0x1e -> :sswitch_b
        0x28 -> :sswitch_a
        0x32 -> :sswitch_9
        0x3f -> :sswitch_8
        0x41 -> :sswitch_7
        0x46 -> :sswitch_6
        0x50 -> :sswitch_5
        0x5a -> :sswitch_4
        0x5f -> :sswitch_3
        0x64 -> :sswitch_2
        0x78 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public finishComposingText()V
    .locals 1

    const/16 v0, 0x41

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/internal/view/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/c;)V
    .locals 1

    const/16 v0, 0x1e

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/a;->obtainMessageISC(IIILcom/android/internal/view/c;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/c;)V
    .locals 6

    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/a;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/c;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getSelectedText(IILcom/android/internal/view/c;)V
    .locals 1

    const/16 v0, 0x19

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/a;->obtainMessageISC(IIILcom/android/internal/view/c;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/c;)V
    .locals 6

    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/a;->obtainMessageIISC(IIIILcom/android/internal/view/c;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/c;)V
    .locals 6

    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/a;->obtainMessageIISC(IIIILcom/android/internal/view/c;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public obtainMessage(I)Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/a;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessageII(III)Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/a;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessageIISC(IIIILcom/android/internal/view/c;)Landroid/os/Message;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/view/a$b;

    invoke-direct {v0}, Lcom/android/internal/view/a$b;-><init>()V

    .line 2
    iput-object p5, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    .line 3
    iput p4, v0, Lcom/android/internal/view/a$b;->d:I

    .line 4
    iget-object p4, p0, Lcom/android/internal/view/a;->mH:Landroid/os/Handler;

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/a;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/c;)Landroid/os/Message;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/view/a$b;

    invoke-direct {v0}, Lcom/android/internal/view/a$b;-><init>()V

    .line 2
    iput-object p3, v0, Lcom/android/internal/view/a$b;->a:Ljava/lang/Object;

    .line 3
    iput-object p5, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    .line 4
    iput p4, v0, Lcom/android/internal/view/a$b;->d:I

    .line 5
    iget-object p3, p0, Lcom/android/internal/view/a;->mH:Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p2, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessageISC(IIILcom/android/internal/view/c;)Landroid/os/Message;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/view/a$b;

    invoke-direct {v0}, Lcom/android/internal/view/a$b;-><init>()V

    .line 2
    iput-object p4, v0, Lcom/android/internal/view/a$b;->c:Lcom/android/internal/view/c;

    .line 3
    iput p3, v0, Lcom/android/internal/view/a$b;->d:I

    .line 4
    iget-object p3, p0, Lcom/android/internal/view/a;->mH:Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p2, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/a;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/view/a$b;

    invoke-direct {v0}, Lcom/android/internal/view/a$b;-><init>()V

    .line 2
    iput-object p2, v0, Lcom/android/internal/view/a$b;->a:Ljava/lang/Object;

    .line 3
    iput-object p3, v0, Lcom/android/internal/view/a$b;->b:Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/android/internal/view/a;->mH:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)V
    .locals 2

    const/16 v0, 0x3b

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/a;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performEditorAction(I)V
    .locals 2

    const/16 v0, 0x3a

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/a;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x78

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/a;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public reportFullscreenMode(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 1
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/view/a;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    const/16 v0, 0x46

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/a;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1

    const/16 v0, 0x3f

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/a;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1

    const/16 v0, 0x3c

    .line 1
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/a;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    const/16 v0, 0x39

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/a;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/a;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
