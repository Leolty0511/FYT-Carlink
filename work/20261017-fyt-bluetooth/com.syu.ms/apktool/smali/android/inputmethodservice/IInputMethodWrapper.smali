.class Landroid/inputmethodservice/IInputMethodWrapper;
.super Lcom/android/internal/view/d$a;
.source "SourceFile"

# interfaces
.implements Lo/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;,
        Landroid/inputmethodservice/IInputMethodWrapper$Notifier;
    }
.end annotation


# static fields
.field private static final DO_ATTACH_TOKEN:I = 0xa

.field private static final DO_CHANGE_INPUTMETHOD_SUBTYPE:I = 0x50

.field private static final DO_CREATE_SESSION:I = 0x28

.field private static final DO_DUMP:I = 0x1

.field private static final DO_HIDE_SOFT_INPUT:I = 0x46

.field private static final DO_RESTART_INPUT:I = 0x22

.field private static final DO_REVOKE_SESSION:I = 0x32

.field private static final DO_SET_INPUT_CONTEXT:I = 0x14

.field private static final DO_SET_SESSION_ENABLED:I = 0x2d

.field private static final DO_SHOW_SOFT_INPUT:I = 0x3c

.field private static final DO_START_INPUT:I = 0x20

.field private static final DO_UNSET_INPUT_CONTEXT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field public final mCaller:Lo/b;

.field public final mInputMethod:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/inputmethod/InputMethod;",
            ">;"
        }
    .end annotation
.end field

.field public final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;"
        }
    .end annotation
.end field

.field public final mTargetSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/AbstractInputMethodService;Landroid/view/inputmethod/InputMethod;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/d$a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Lo/b;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lo/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/b$a;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lo/b;->g(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/view/i;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/b$a;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/view/i;-><init>(Lcom/android/internal/view/b;)V

    .line 2
    new-instance v1, Landroid/view/inputmethod/InputBinding;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V

    .line 3
    iget-object p1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Lo/b;->g(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, p1}, Lo/b;->g(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public createSession(Landroid/view/InputChannel;Lcom/android/internal/view/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, p1, p2}, Lo/b;->h(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/AbstractInputMethodService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.permission.DUMP"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", uid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    iget-object v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/4 v1, 0x1

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lo/b;->i(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v7, p1}, Lo/b;->a(Landroid/os/Message;)V

    const-wide/16 v0, 0x5

    .line 6
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Timeout waiting for dump"

    .line 7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Interrupted waiting for dump"

    .line 8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethod;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v1, :cond_0

    const-string v0, "InputMethodWrapper"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method reference was null, ignoring message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    const-string v0, "InputMethodWrapper"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :sswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void

    .line 7
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/ResultReceiver;

    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    return-void

    .line 8
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/ResultReceiver;

    invoke-interface {v0, v1, p1}, Landroid/view/inputmethod/InputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V

    return-void

    .line 9
    :sswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethod;->revokeSession(Landroid/view/inputmethod/InputMethodSession;)V

    return-void

    .line 10
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodSession;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputMethod;->setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V

    return-void

    .line 11
    :sswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 12
    new-instance v1, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    iget-object v2, v2, Lo/b;->a:Landroid/content/Context;

    iget-object v3, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputChannel;

    iget-object v4, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/h;

    invoke-direct {v1, v2, v3, v4}, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/internal/view/h;)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputMethod;->createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V

    .line 13
    invoke-virtual {p1}, Lo/f;->c()V

    return-void

    .line 14
    :sswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 15
    iget-object v1, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/b;

    if-eqz v1, :cond_2

    .line 16
    new-instance v3, Lcom/android/internal/view/i;

    invoke-direct {v3, v1}, Lcom/android/internal/view/i;-><init>(Lcom/android/internal/view/b;)V

    .line 17
    :cond_2
    iget-object v1, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 18
    iget v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 19
    invoke-interface {v0, v3, v1}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 20
    invoke-virtual {p1}, Lo/f;->c()V

    return-void

    .line 21
    :sswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 22
    iget-object v1, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/b;

    if-eqz v1, :cond_3

    .line 23
    new-instance v3, Lcom/android/internal/view/i;

    invoke-direct {v3, v1}, Lcom/android/internal/view/i;-><init>(Lcom/android/internal/view/b;)V

    .line 24
    :cond_3
    iget-object v1, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 25
    iget v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 26
    invoke-interface {v0, v3, v1}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 27
    invoke-virtual {p1}, Lo/f;->c()V

    return-void

    .line 28
    :sswitch_8
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->unbindInput()V

    return-void

    .line 29
    :sswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    return-void

    .line 30
    :sswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethod;->attachToken(Landroid/os/IBinder;)V

    return-void

    .line 31
    :sswitch_b
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/AbstractInputMethodService;

    if-nez v0, :cond_4

    return-void

    .line 32
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 33
    :try_start_0
    iget-object v1, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v1, Ljava/io/FileDescriptor;

    iget-object v2, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/PrintWriter;

    iget-object v3, p1, Lo/f;->e:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/inputmethodservice/AbstractInputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 34
    iget-object v1, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    :goto_1
    iget-object v0, p1, Lo/f;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_1
    iget-object v1, p1, Lo/f;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 37
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-virtual {p1}, Lo/f;->c()V

    return-void

    :catchall_0
    move-exception p1

    .line 39
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0xa -> :sswitch_a
        0x14 -> :sswitch_9
        0x1e -> :sswitch_8
        0x20 -> :sswitch_7
        0x22 -> :sswitch_6
        0x28 -> :sswitch_5
        0x2d -> :sswitch_4
        0x32 -> :sswitch_3
        0x3c -> :sswitch_2
        0x46 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getInternalInputMethod()Landroid/view/inputmethod/InputMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethod;

    return-object v0
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2}, Lo/b;->f(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public restartInput(Lcom/android/internal/view/b;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, p1, p2}, Lo/b;->h(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public revokeSession(Lcom/android/internal/view/g;)V
    .locals 4

    const-string v0, "InputMethodWrapper"

    .line 1
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    invoke-virtual {v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session is already finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/16 v3, 0x32

    invoke-virtual {v2, v3, v1}, Lo/b;->g(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/b;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming session not of correct type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setSessionEnabled(Lcom/android/internal/view/g;Z)V
    .locals 4

    const-string v0, "InputMethodWrapper"

    .line 1
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    invoke-virtual {v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session is already finished: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/16 v3, 0x2d

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v2, v3, p2, v1}, Lo/b;->f(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v2, p2}, Lo/b;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming session not of correct type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p1, p2}, Lo/b;->f(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public startInput(Lcom/android/internal/view/b;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1, p2}, Lo/b;->h(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public unbindInput()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lo/b;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lo/b;->b(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/b;->a(Landroid/os/Message;)V

    return-void
.end method
