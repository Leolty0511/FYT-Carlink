.class Lcom/android/internal/policy/DecorContext;
.super Landroid/view/ContextThemeWrapper;
.source "SourceFile"


# instance fields
.field private mActivityResources:Landroid/content/res/Resources;

.field private mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/internal/policy/DecorContext;->mActivityResources:Landroid/content/res/Resources;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mActivityResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mActivityResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string/jumbo v0, "window"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-super {p0, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/view/WindowManagerImpl;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/policy/DecorContext;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    .line 5
    .line 6
    return-void
.end method
