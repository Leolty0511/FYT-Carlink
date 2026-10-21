.class public Landroid/view/accessibility/CaptioningManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;,
        Landroid/view/accessibility/CaptioningManager$CaptionStyle;,
        Landroid/view/accessibility/CaptioningManager$MyContentObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:I = 0x0

.field private static final DEFAULT_FONT_SCALE:F = 1.0f

.field private static final DEFAULT_PRESET:I


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStyleChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/view/accessibility/CaptioningManager$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/view/accessibility/CaptioningManager$1;-><init>(Landroid/view/accessibility/CaptioningManager;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 23
    .line 24
    new-instance v0, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroid/view/accessibility/CaptioningManager$MyContentObserver;

    .line 34
    .line 35
    invoke-direct {p1, p0, v0}, Landroid/view/accessibility/CaptioningManager$MyContentObserver;-><init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic access$000(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyEnabledChanged()V

    return-void
.end method

.method public static synthetic access$100(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyLocaleChanged()V

    return-void
.end method

.method public static synthetic access$200(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyFontScaleChanged()V

    return-void
.end method

.method public static synthetic access$300(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyUserStyleChanged()V

    return-void
.end method

.method private notifyEnabledChanged()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onEnabledChanged(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0
.end method

.method private notifyFontScaleChanged()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onFontScaleChanged(F)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0
.end method

.method private notifyLocaleChanged()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onLocaleChanged(Ljava/util/Locale;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0
.end method

.method private notifyUserStyleChanged()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0
.end method

.method private registerObserver(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "accessibility_captioning_enabled"

    .line 13
    .line 14
    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "accessibility_captioning_foreground_color"

    .line 18
    .line 19
    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "accessibility_captioning_background_color"

    .line 23
    .line 24
    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "accessibility_captioning_window_color"

    .line 28
    .line 29
    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "accessibility_captioning_edge_type"

    .line 33
    .line 34
    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "accessibility_captioning_edge_color"

    .line 38
    .line 39
    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "accessibility_captioning_typeface"

    .line 43
    .line 44
    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "accessibility_captioning_font_scale"

    .line 48
    .line 49
    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "accessibility_captioning_locale"

    .line 53
    .line 54
    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "accessibility_captioning_preset"

    .line 58
    .line 59
    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p1
.end method

.method public final getFontScale()F
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_3

    .line 10
    .line 11
    const-string v1, "_"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v1, v0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v1, v3, :cond_2

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-eq v1, v4, :cond_1

    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    if-eq v1, v5, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Ljava/util/Locale;

    .line 30
    .line 31
    aget-object v2, v0, v2

    .line 32
    .line 33
    aget-object v3, v0, v3

    .line 34
    .line 35
    aget-object v0, v0, v4

    .line 36
    .line 37
    invoke-direct {v1, v2, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    new-instance v1, Ljava/util/Locale;

    .line 42
    .line 43
    aget-object v2, v0, v2

    .line 44
    .line 45
    aget-object v0, v0, v3

    .line 46
    .line 47
    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_2
    new-instance v1, Ljava/util/Locale;

    .line 52
    .line 53
    aget-object v0, v0, v2

    .line 54
    .line 55
    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 60
    return-object v0
.end method

.method public final getRawLocale()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawUserStyle()I
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_preset"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_0
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 16
    .line 17
    aget-object v0, v1, v0

    .line 18
    .line 19
    return-object v0
.end method

.method public final isEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 18
    .line 19
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method
