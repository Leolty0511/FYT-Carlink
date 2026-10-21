.class Landroid/inputmethodservice/IInputMethodSessionWrapper;
.super Lcom/android/internal/view/g$a;
.source "SourceFile"

# interfaces
.implements Lo/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;
    }
.end annotation


# static fields
.field private static final DO_APP_PRIVATE_COMMAND:I = 0x64

.field private static final DO_DISPLAY_COMPLETIONS:I = 0x41

.field private static final DO_FINISH_INPUT:I = 0x3c

.field private static final DO_FINISH_SESSION:I = 0x6e

.field private static final DO_TOGGLE_SOFT_INPUT:I = 0x69

.field private static final DO_UPDATE_CURSOR:I = 0x5f

.field private static final DO_UPDATE_EXTRACTED_TEXT:I = 0x43

.field private static final DO_UPDATE_SELECTION:I = 0x5a

.field private static final DO_VIEW_CLICKED:I = 0x73

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field public mCaller:Lo/b;

.field public mChannel:Landroid/view/InputChannel;

.field public mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

.field public mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;Landroid/view/InputChannel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/g$a;-><init>()V

    .line 2
    new-instance v0, Lo/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Lo/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/b$a;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lo/b;

    .line 3
    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    .line 4
    iput-object p3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz p3, :cond_0

    .line 5
    new-instance p2, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p3, p1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;-><init>(Landroid/inputmethodservice/IInputMethodSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    :cond_0
    return-void
.end method

.method private doFinishSession()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    .line 2
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 4
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 7
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    :cond_1
    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lo/b;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Lo/b;->h(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lo/b;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, p1}, Lo/b;->g(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_a

    const/16 v2, 0x41

    if-eq v1, v2, :cond_9

    const/16 v2, 0x43

    if-eq v1, v2, :cond_8

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_7

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_6

    const/16 v2, 0x64

    if-eq v1, v2, :cond_5

    const/16 v2, 0x69

    if-eq v1, v2, :cond_4

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_3

    const/16 v2, 0x73

    if-eq v1, v2, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputMethodSession;->viewClicked(Z)V

    return-void

    .line 5
    :cond_3
    invoke-direct {p0}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->doFinishSession()V

    return-void

    .line 6
    :cond_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputMethodSession;->toggleSoftInput(II)V

    return-void

    .line 7
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 8
    iget-object v1, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {p1}, Lo/f;->c()V

    return-void

    .line 10
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    return-void

    .line 11
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 12
    iget v1, p1, Lo/f;->h:I

    iget v2, p1, Lo/f;->i:I

    iget v3, p1, Lo/f;->j:I

    iget v4, p1, Lo/f;->k:I

    iget v5, p1, Lo/f;->l:I

    iget v6, p1, Lo/f;->m:I

    invoke-interface/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodSession;->updateSelection(IIIIII)V

    .line 13
    invoke-virtual {p1}, Lo/f;->c()V

    return-void

    .line 14
    :cond_8
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/ExtractedText;

    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    return-void

    .line 15
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    return-void

    .line 16
    :cond_a
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodSession;->finishInput()V

    return-void
.end method

.method public finishInput()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lo/b;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lo/b;->b(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public finishSession()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lo/b;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lo/b;->b(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    return-object v0
.end method

.method public toggleSoftInput(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lo/b;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1, p2}, Lo/b;->d(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public updateCursor(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lo/b;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1, p1}, Lo/b;->g(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lo/b;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1, p2}, Lo/b;->f(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public updateSelection(IIIIII)V
    .locals 9

    .line 1
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lo/b;

    const/16 v1, 0x5a

    move-object v0, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lo/b;->e(IIIIIII)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v8, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public viewClicked(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lo/b;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Lo/b;->c(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method
