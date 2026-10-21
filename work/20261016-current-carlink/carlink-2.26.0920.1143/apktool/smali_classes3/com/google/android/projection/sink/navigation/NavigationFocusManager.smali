.class public Lcom/google/android/projection/sink/navigation/NavigationFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/navigation/NavigationFocusManager$NavigationFocusListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AHU.NAVIGATION"


# instance fields
.field private final mGal:Lcom/google/android/projection/sink/GalIntegration;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/sink/navigation/NavigationFocusManager$NavigationFocusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUseNativeNavigation:Z


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/GalIntegration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mListeners:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mUseNativeNavigation:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 15
    .line 16
    return-void
.end method

.method private declared-synchronized dispatchNavigationFocus(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mUseNativeNavigation:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mUseNativeNavigation:Z

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mListeners:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager$NavigationFocusListener;

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mUseNativeNavigation:Z

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/google/android/projection/sink/navigation/NavigationFocusManager$NavigationFocusListener;->onNavigationFocusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method


# virtual methods
.method public enforceNavigationFocus(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->NAVIGATION_FOCUS_STATE_NATIVE:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v1, Lcom/google/android/projection/protocol/GalReceiver;->NAVIGATION_FOCUS_STATE_PROJECTED:I

    .line 11
    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/GalReceiver;->sendNavigationFocusState(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->dispatchNavigationFocus(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public handleNavigationFocusRequest(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->sendNavigationFocusState(I)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/google/android/projection/protocol/GalReceiver;->NAVIGATION_FOCUS_STATE_PROJECTED:I

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->dispatchNavigationFocus(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/google/android/projection/sink/navigation/NavigationFocusManager$NavigationFocusListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mListeners:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mUseNativeNavigation:Z

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/google/android/projection/sink/navigation/NavigationFocusManager$NavigationFocusListener;->onNavigationFocusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/google/android/projection/sink/navigation/NavigationFocusManager$NavigationFocusListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;->mListeners:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method
