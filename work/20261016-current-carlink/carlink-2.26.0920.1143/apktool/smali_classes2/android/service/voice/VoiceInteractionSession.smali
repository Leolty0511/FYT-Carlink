.class public Landroid/service/voice/VoiceInteractionSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionSession$Insets;,
        Landroid/service/voice/VoiceInteractionSession$MyCallbacks;,
        Landroid/service/voice/VoiceInteractionSession$CommandRequest;,
        Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;,
        Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;,
        Landroid/service/voice/VoiceInteractionSession$Request;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_RECEIVER_EXTRAS:Ljava/lang/String; = "receiverExtras"

.field public static final KEY_STRUCTURE:Ljava/lang/String; = "structure"

.field static final MSG_CANCEL:I = 0x7

.field static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0x66

.field static final MSG_DESTROY:I = 0x67

.field static final MSG_HANDLE_ASSIST:I = 0x68

.field static final MSG_HANDLE_SCREENSHOT:I = 0x69

.field static final MSG_HIDE:I = 0x6b

.field static final MSG_ON_LOCKSCREEN_SHOWN:I = 0x6c

.field static final MSG_SHOW:I = 0x6a

.field static final MSG_START_ABORT_VOICE:I = 0x4

.field static final MSG_START_COMMAND:I = 0x5

.field static final MSG_START_COMPLETE_VOICE:I = 0x3

.field static final MSG_START_CONFIRMATION:I = 0x1

.field static final MSG_START_PICK_OPTION:I = 0x2

.field static final MSG_SUPPORTS_COMMANDS:I = 0x6

.field static final MSG_TASK_FINISHED:I = 0x65

.field static final MSG_TASK_STARTED:I = 0x64

.field public static final SHOW_SOURCE_ACTIVITY:I = 0x10

.field public static final SHOW_SOURCE_APPLICATION:I = 0x8

.field public static final SHOW_SOURCE_ASSIST_GESTURE:I = 0x4

.field public static final SHOW_WITH_ASSIST:I = 0x1

.field public static final SHOW_WITH_SCREENSHOT:I = 0x2

.field static final TAG:Ljava/lang/String; = "VoiceInteractionSession"


# instance fields
.field final mActiveRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/service/voice/VoiceInteractionSession$Request;",
            ">;"
        }
    .end annotation
.end field

.field final mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

.field mContentFrame:Landroid/widget/FrameLayout;

.field final mContext:Landroid/content/Context;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field final mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field mRootView:Landroid/view/View;

.field final mSession:Landroid/service/voice/IVoiceInteractionSession;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

.field mToken:Landroid/os/IBinder;

.field mUiEnabled:Z

.field final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionSession;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    .line 6
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    .line 7
    new-instance v1, Landroid/service/voice/VoiceInteractionSession$Insets;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionSession$Insets;-><init>()V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    .line 8
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 9
    new-instance v1, Landroid/service/voice/VoiceInteractionSession$1;

    invoke-direct {v1, p0}, Landroid/service/voice/VoiceInteractionSession$1;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 10
    new-instance v1, Landroid/service/voice/VoiceInteractionSession$2;

    invoke-direct {v1, p0}, Landroid/service/voice/VoiceInteractionSession$2;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 11
    new-instance v1, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    invoke-direct {v1, p0}, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    .line 12
    new-instance v2, Landroid/service/voice/VoiceInteractionSession$3;

    invoke-direct {v2, p0}, Landroid/service/voice/VoiceInteractionSession$3;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 13
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 14
    new-instance v2, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v2, p1, p2, v1, v0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    return-void
.end method

.method private doOnCreate()V
    .locals 1

    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x10303cb

    :goto_0
    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    return-void
.end method


# virtual methods
.method public addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    .line 3
    .line 4
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method

.method public closeSystemDialogs()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->closeSystemDialogs(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "Can\'t call before onCreate()"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public doCreate(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onCreate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public doDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 27
    .line 28
    .line 29
    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    .line 30
    .line 31
    :cond_0
    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public doHide()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowHidden()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onHide()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public doOnHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Landroid/service/voice/VoiceInteractionSession;->onAssistStructureFailure(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Landroid/service/voice/VoiceInteractionSession;->onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public doOnHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;II)V
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Landroid/service/voice/VoiceInteractionSession;->onAssistStructureFailure(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p4

    .line 10
    move v4, p5

    .line 11
    move v5, p6

    .line 12
    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession;->onHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 2
    .line 3
    const-string v1, "VoiceInteractionSession"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "Re-entrance in to showWindow"

    .line 8
    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    :try_start_0
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->onPrepareShow(Landroid/os/Bundle;I)V

    .line 18
    .line 19
    .line 20
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowAdded()V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->onShow(Landroid/os/Bundle;I)V

    .line 28
    .line 29
    .line 30
    iget-boolean p1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 35
    .line 36
    iget-boolean p1, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 43
    .line 44
    .line 45
    :cond_2
    if-eqz p3, :cond_4

    .line 46
    .line 47
    iget-boolean p1, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance p2, Landroid/service/voice/VoiceInteractionSession$4;

    .line 63
    .line 64
    invoke-direct {p2, p0, p3}, Landroid/service/voice/VoiceInteractionSession$4;-><init>(Landroid/service/voice/VoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    :try_start_1
    invoke-interface {p3}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    :try_start_2
    const-string p2, "Error calling onShown"

    .line 77
    .line 78
    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_0
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    .line 82
    .line 83
    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 84
    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    .line 88
    .line 89
    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 90
    .line 91
    throw p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "mToken="

    .line 5
    .line 6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 10
    .line 11
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "mTheme=#"

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "mUiEnabled="

    .line 35
    .line 36
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, " mInitialized="

    .line 45
    .line 46
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    .line 50
    .line 51
    const-string v1, "mWindowAdded="

    .line 52
    .line 53
    invoke-static {p3, v0, p1, v1}, Landroid/accessibilityservice/c;->y(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    .line 57
    .line 58
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 59
    .line 60
    .line 61
    const-string v0, " mWindowVisible="

    .line 62
    .line 63
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 67
    .line 68
    const-string v1, "mWindowWasVisible="

    .line 69
    .line 70
    invoke-static {p3, v0, p1, v1}, Landroid/accessibilityservice/c;->y(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    .line 74
    .line 75
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 76
    .line 77
    .line 78
    const-string v0, " mInShowWindow="

    .line 79
    .line 80
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 84
    .line 85
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-lez v0, :cond_0

    .line 95
    .line 96
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v0, "Active requests:"

    .line 100
    .line 101
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, "    "

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const/4 v1, 0x0

    .line 122
    :goto_0
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    .line 123
    .line 124
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-ge v1, v2, :cond_0

    .line 129
    .line 130
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    .line 131
    .line 132
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Landroid/service/voice/VoiceInteractionSession$Request;

    .line 137
    .line 138
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v3, "  #"

    .line 142
    .line 143
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 147
    .line 148
    .line 149
    const-string v3, ": "

    .line 150
    .line 151
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public ensureWindowAdded()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onCreateContentView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionSession;->setContentView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public ensureWindowCreated()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    .line 12
    .line 13
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v1, "layout_inflater"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/LayoutInflater;

    .line 22
    .line 23
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    .line 24
    .line 25
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    .line 26
    .line 27
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const-string v3, "VoiceInteractionSession"

    .line 30
    .line 31
    iget v4, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 32
    .line 33
    iget-object v5, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    .line 34
    .line 35
    iget-object v7, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 36
    .line 37
    const/16 v8, 0x7ef

    .line 38
    .line 39
    const/16 v9, 0x50

    .line 40
    .line 41
    const/4 v10, 0x1

    .line 42
    move-object v1, v0

    .line 43
    move-object v6, p0

    .line 44
    invoke-direct/range {v1 .. v10}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const v1, 0x1010100

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    sget-object v1, Landroid/R$styleable;->VoiceInteractionSession:[I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 68
    .line 69
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    .line 71
    const v1, 0x109010e

    .line 72
    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 80
    .line 81
    const/16 v1, 0x700

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 87
    .line 88
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 105
    .line 106
    const v1, 0x1020002

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/widget/FrameLayout;

    .line 114
    .line 115
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    .line 116
    .line 117
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const/4 v1, -0x1

    .line 124
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 128
    .line 129
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    const-string/jumbo v1, "setUiEnabled is false"

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0
.end method

.method public ensureWindowHidden()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->finish(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "Can\'t call before onCreate()"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDisabledShowContext()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    return-object v0
.end method

.method public getUserDisabledShowContext()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getUserDisabledShowContext()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 5
    .line 6
    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideSessionFromSession(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "Can\'t call before onCreate()"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public isRequestActive(Landroid/os/IBinder;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method public onAssistStructureFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    return-void
.end method

.method public onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .locals 0

    return-void
.end method

.method public onCloseSystemDialogs()V
    .locals 0

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    return-void
.end method

.method public onComputeInsets(Landroid/service/voice/VoiceInteractionSession$Insets;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5
    .line 6
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 7
    .line 8
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->getWindow()Landroid/app/Dialog;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    iput v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableInsets:I

    .line 31
    .line 32
    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionSession;->doOnCreate()V

    return-void
.end method

.method public onCreateContentView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGetSupportedCommands([Ljava/lang/String;)[Z
    .locals 0

    array-length p1, p1

    new-array p1, p1, [Z

    return-object p1
.end method

.method public onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    .locals 0

    return-void
.end method

.method public onHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    .locals 0

    return-void
.end method

.method public onHandleScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onHide()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLockscreenShown()V
    .locals 0

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onPrepareShow(Landroid/os/Bundle;I)V
    .locals 0

    return-void
.end method

.method public onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V
    .locals 0

    return-void
.end method

.method public onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V
    .locals 0

    return-void
.end method

.method public onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V
    .locals 0

    return-void
.end method

.method public onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V
    .locals 0

    return-void
.end method

.method public onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V
    .locals 0

    return-void
.end method

.method public onShow(Landroid/os/Bundle;I)V
    .locals 0

    return-void
.end method

.method public onTaskFinished(Landroid/content/Intent;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    return-void
.end method

.method public onTaskStarted(Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public removeRequest(Landroid/os/IBinder;)Landroid/service/voice/VoiceInteractionSession$Request;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/service/voice/VoiceInteractionSession$Request;

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setDisabledShowContext(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setKeepAwake(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 6
    .line 7
    invoke-interface {v1, v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setKeepAwake(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v0, "Can\'t call before onCreate()"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public setTheme(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Must be called before onCreate()"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public setUiEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowAdded()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowHidden()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public show(Landroid/os/Bundle;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 6
    .line 7
    invoke-interface {v1, v0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "Can\'t call before onCreate()"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public startAssistantActivity(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 16
    .line 17
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startAssistantActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "Can\'t call before onCreate()"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public startVoiceActivity(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 16
    .line 17
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "Can\'t call before onCreate()"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
