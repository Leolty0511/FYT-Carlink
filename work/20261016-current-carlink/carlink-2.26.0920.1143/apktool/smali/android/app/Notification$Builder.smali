.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final LIGHTNESS_TEXT_DIFFERENCE_DARK:I = -0xa

.field private static final LIGHTNESS_TEXT_DIFFERENCE_LIGHT:I = 0x14

.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z


# instance fields
.field private mActionBarColor:I

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundColor:I

.field private mBackgroundColorHint:I

.field private mCachedAmbientColor:I

.field private mCachedAmbientColorIsFor:I

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mContext:Landroid/content/Context;

.field private mForegroundColor:I

.field private mInNightMode:Z

.field private mIsLegacy:Z

.field private mIsLegacyInitialized:Z

.field private mN:Landroid/app/Notification;

.field private mOriginalActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field mParams:Landroid/app/Notification$StandardTemplateParams;

.field private mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryTextColor:I

.field private mRebuildStyledRemoteViews:Z

.field private mSecondaryTextColor:I

.field private mStyle:Landroid/app/Notification$Style;

.field private mTextColorsAreForBackground:I

.field private mTintActionButtons:Z

.field private mUserExtras:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "notifications.only_title"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    .line 9
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 10
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    .line 11
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    .line 12
    new-instance v1, Landroid/app/Notification$StandardTemplateParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$StandardTemplateParams;-><init>(Landroid/app/Notification$1;)V

    iput-object v1, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    .line 13
    iput v0, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 14
    iput v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 15
    iput v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 16
    iput v0, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    .line 17
    iput v0, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    .line 18
    iput v0, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 19
    iput v0, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    .line 20
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200cd

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    const v2, 0x1120061

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 25
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    :cond_1
    if-nez p2, :cond_3

    .line 26
    new-instance p2, Landroid/app/Notification;

    invoke-direct {p2}, Landroid/app/Notification;-><init>()V

    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_2

    .line 28
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.showWhen"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    :cond_2
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v3, p1, Landroid/app/Notification;->priority:I

    .line 30
    iput v3, p1, Landroid/app/Notification;->visibility:I

    goto/16 :goto_1

    .line 31
    :cond_3
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 32
    iget-object p1, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p1, :cond_4

    .line 33
    iget-object p2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 34
    :cond_4
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.people"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 35
    iget-object p1, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, p2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 36
    :cond_5
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_6

    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 38
    :cond_6
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_7

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 40
    :cond_7
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.template"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 42
    invoke-static {p1}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v1, "Notification"

    if-nez p2, :cond_8

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown style class: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    :try_start_0
    new-array p1, v3, [Ljava/lang/Class;

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$Style;

    .line 47
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "Could not create Style"

    .line 49
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 2
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1, p2}, Landroid/app/Notification;->access$402(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1700(Landroid/app/Notification$Builder;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1800(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result p0

    return p0
.end method

.method public static synthetic access$2100(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2200(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2300(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method public static synthetic access$2400(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$2402(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic access$2500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$2502(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static synthetic access$2600(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result p0

    return p0
.end method

.method public static synthetic access$2900(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$3000(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method public static synthetic access$3100(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3300(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3400(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result p0

    return p0
.end method

.method public static synthetic access$3500(Landroid/app/Notification$Builder;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3600(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method public static synthetic access$3700(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result p0

    return p0
.end method

.method public static synthetic access$3800(Landroid/app/Notification$Builder;)Z
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->shouldTintActionButtons()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3900(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4000(Landroid/app/Notification$Builder;)I
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getPrimaryHighlightColor()I

    move-result p0

    return p0
.end method

.method public static synthetic access$4100(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private applyStandardTemplate(I)Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method private applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 4

    .line 5
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 6
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 7
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 8
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->updateBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 9
    iget-boolean v1, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Z)V

    .line 10
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;)V

    .line 11
    iget-boolean v1, p2, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    invoke-direct {p0, v1, v0, p1}, Landroid/app/Notification$Builder;->handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z

    move-result p1

    .line 12
    iget-object v1, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const v1, 0x1020016

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 14
    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 15
    iget-boolean v3, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v3, :cond_0

    .line 16
    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v3, -0x2

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 17
    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewLayoutWidth(II)V

    .line 18
    :cond_2
    iget-object v1, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    const v3, 0x1020436

    goto :goto_1

    :cond_3
    const v3, 0x102041b

    .line 19
    :goto_1
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 20
    iget-boolean p2, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez p2, :cond_4

    .line 21
    invoke-direct {p0, v0, v3}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 22
    :cond_4
    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_5
    if-nez p1, :cond_6

    .line 23
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->access$1300(Landroid/app/Notification;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    invoke-virtual {p0, v0, v2}, Landroid/app/Notification$Builder;->setContentMinHeight(Landroid/widget/RemoteViews;Z)V

    return-object v0
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p2

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method private applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 10

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string/jumbo v4, "setEmphasizedMode"

    const v5, 0x102018a

    .line 6
    invoke-virtual {p1, v5, v4, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const v4, 0x102018b

    if-lez v0, :cond_5

    .line 7
    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 8
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9
    iget-boolean v4, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    const-string/jumbo v6, "setBackgroundColor"

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {p1, v5, v6, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionBarColor()I

    move-result v4

    invoke-virtual {p1, v5, v6, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v7, 0x10600e9

    invoke-virtual {v4, v7}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v5, v6, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_1
    const v4, 0x1020328

    const v6, 0x10500fc

    .line 14
    invoke-virtual {p1, v4, v6}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    const/4 v4, 0x3

    if-le v0, v4, :cond_3

    move v0, v4

    :cond_3
    move v4, v3

    move v6, v4

    :goto_2
    if-ge v4, v0, :cond_6

    .line 15
    iget-object v7, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$Action;

    .line 16
    invoke-direct {p0, v7}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v8

    or-int/2addr v6, v8

    .line 17
    rem-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_4

    move v8, v2

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_3
    iget-boolean v9, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-direct {p0, v7, v1, v8, v9}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZZZ)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 18
    invoke-virtual {p1, v5, v7}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    .line 19
    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v6, v3

    .line 20
    :cond_6
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputHistory"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 21
    iget-boolean p2, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez p2, :cond_7

    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    array-length p2, v0

    if-lez p2, :cond_7

    aget-object p2, v0, v3

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const p2, 0x102032c

    .line 23
    invoke-virtual {p1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 24
    aget-object p2, v0, v3

    .line 25
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    const v1, 0x102032d

    .line 26
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 27
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 28
    array-length p2, v0

    if-le p2, v2, :cond_7

    aget-object p2, v0, v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const p2, 0x102032e

    .line 29
    invoke-virtual {p1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 30
    aget-object v1, v0, v2

    .line 31
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 32
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 34
    array-length p2, v0

    const/4 v1, 0x2

    if-le p2, v1, :cond_7

    aget-object p2, v0, v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const p2, 0x102032f

    .line 35
    invoke-virtual {p1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 36
    aget-object v0, v0, v1

    .line 37
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    :cond_7
    return-object p1
.end method

.method private bindExpandButton(Landroid/widget/RemoteViews;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getPrimaryHighlightColor()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    const v1, 0x1020237

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, -0x1

    .line 10
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 11
    .line 12
    const/4 v6, -0x1

    .line 13
    move-object v0, p1

    .line 14
    move v4, v7

    .line 15
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 16
    .line 17
    .line 18
    const v0, 0x102032a

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "setOriginalNotificationColor"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private bindHeaderAppName(Landroid/widget/RemoteViews;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x10201ad

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    :goto_0
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void
.end method

.method private bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "setTime"

    .line 6
    .line 7
    .line 8
    const v2, 0x102043a

    .line 9
    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const v0, 0x102043e

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 24
    .line 25
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 26
    .line 27
    const-string v4, "android.showChronometer"

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const v0, 0x10201f5

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 42
    .line 43
    iget-wide v1, v1, Landroid/app/Notification;->when:J

    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    sub-long/2addr v3, v5

    .line 54
    add-long/2addr v3, v1

    .line 55
    const-string/jumbo v1, "setBase"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v1, "setStarted"

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 69
    .line 70
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 71
    .line 72
    const-string v2, "android.chronometerCountDown"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 89
    .line 90
    iget-wide v3, v0, Landroid/app/Notification;->when:J

    .line 91
    .line 92
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 100
    .line 101
    iget-wide v3, v0, Landroid/app/Notification;->when:J

    .line 102
    .line 103
    const-wide/16 v5, 0x0

    .line 104
    .line 105
    cmp-long v5, v3, v5

    .line 106
    .line 107
    if-eqz v5, :cond_2

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-static {v0}, Landroid/app/Notification;->access$1500(Landroid/app/Notification;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    :goto_0
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 115
    .line 116
    .line 117
    :goto_1
    return-void
.end method

.method private bindHeaderText(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string v1, "android.subText"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-boolean v2, v1, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 28
    .line 29
    iget-object v0, v0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 30
    .line 31
    :cond_0
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 40
    .line 41
    const/16 v2, 0x18

    .line 42
    .line 43
    if-ge v1, v2, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 46
    .line 47
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 48
    .line 49
    const-string v2, "android.infoText"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 58
    .line 59
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_1
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const v1, 0x1020281

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 86
    .line 87
    .line 88
    const v1, 0x1020282

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 95
    .line 96
    .line 97
    :cond_2
    return-void
.end method

.method private bindLargeIcon(Landroid/widget/RemoteViews;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v1, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/app/Notification;->access$1000(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 14
    .line 15
    iget-object v2, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Landroid/app/Notification;->access$1002(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 27
    .line 28
    invoke-static {v1}, Landroid/app/Notification;->access$1000(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/16 v9, 0x8

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    const v11, 0x102039c

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 44
    .line 45
    invoke-static {v1}, Landroid/app/Notification;->access$1000(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v8, v11, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 53
    .line 54
    invoke-static {v1}, Landroid/app/Notification;->access$1000(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1, v8}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 59
    .line 60
    .line 61
    const v1, 0x10202d7

    .line 62
    .line 63
    .line 64
    const v2, 0x1050107

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 68
    .line 69
    .line 70
    const v1, 0x102041b

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 74
    .line 75
    .line 76
    const v1, 0x102000d

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 80
    .line 81
    .line 82
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->findReplyAction()Landroid/app/Notification$Action;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    if-eqz v12, :cond_1

    .line 87
    .line 88
    move v1, v10

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    move v1, v9

    .line 91
    :goto_0
    const v13, 0x1020392

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v13, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 95
    .line 96
    .line 97
    if-eqz v12, :cond_3

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    const v2, 0x1020392

    .line 104
    .line 105
    .line 106
    const/4 v3, 0x1

    .line 107
    const/4 v4, -0x1

    .line 108
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 109
    .line 110
    const/4 v7, -0x1

    .line 111
    move-object/from16 v1, p1

    .line 112
    .line 113
    move v5, v14

    .line 114
    move-object v6, v15

    .line 115
    invoke-virtual/range {v1 .. v7}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 116
    .line 117
    .line 118
    invoke-static {v14}, Lcom/android/internal/util/NotificationColorUtil;->isColorLight(I)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_2

    .line 123
    .line 124
    const/high16 v1, -0x1000000

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const/4 v1, -0x1

    .line 128
    :goto_1
    move v5, v1

    .line 129
    const v2, 0x1020392

    .line 130
    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    const/4 v4, -0x1

    .line 134
    const/4 v7, -0x1

    .line 135
    move-object/from16 v1, p1

    .line 136
    .line 137
    move-object v6, v15

    .line 138
    invoke-virtual/range {v1 .. v7}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v12, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 142
    .line 143
    invoke-virtual {v8, v11, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v12, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 147
    .line 148
    invoke-virtual {v8, v13, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v12}, Landroid/app/Notification$Action;->access$1400(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v8, v11, v1}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v12}, Landroid/app/Notification$Action;->access$1400(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v8, v13, v1}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    iget-object v1, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 166
    .line 167
    invoke-static {v1}, Landroid/app/Notification;->access$1000(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-eqz v1, :cond_4

    .line 172
    .line 173
    move v9, v10

    .line 174
    :cond_4
    const v1, 0x102039d

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method private bindNotificationHeader(Landroid/widget/RemoteViews;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;Z)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Z)V

    .line 5
    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private bindProfileBadge(Landroid/widget/RemoteViews;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const v1, 0x102037c

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const v2, 0x102037c

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, -0x1

    .line 28
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 33
    .line 34
    const/4 v7, -0x1

    .line 35
    move-object v1, p1

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private bindSmallIcon(Landroid/widget/RemoteViews;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/Notification;->access$1600(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 10
    .line 11
    iget v1, v0, Landroid/app/Notification;->icon:I

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v2, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/app/Notification;->access$1602(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/app/Notification;->access$1600(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v1, 0x1020006

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 34
    .line 35
    .line 36
    const v3, 0x1020006

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, -0x1

    .line 41
    const/4 v6, -0x1

    .line 42
    const/4 v7, 0x0

    .line 43
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 44
    .line 45
    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    .line 46
    .line 47
    move-object v2, p1

    .line 48
    invoke-virtual/range {v2 .. v8}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 52
    .line 53
    invoke-static {v0}, Landroid/app/Notification;->access$1600(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private createSummaryText()Ljava/lang/CharSequence;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string v1, "android.title"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-boolean v1, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 24
    .line 25
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 26
    .line 27
    const-string v2, "android.title.big"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 47
    .line 48
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 49
    .line 50
    const-string v4, "android.text"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    const v4, 0x10403de

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_3
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_4
    return-object v1
.end method

.method private ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v1, Landroid/text/Spanned;

    .line 8
    .line 9
    if-eqz v3, :cond_8

    .line 10
    .line 11
    move-object v3, v1

    .line 12
    check-cast v3, Landroid/text/Spanned;

    .line 13
    .line 14
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const-class v5, Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-direct {v5, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    array-length v7, v4

    .line 35
    move v8, v6

    .line 36
    :goto_0
    if-ge v8, v7, :cond_7

    .line 37
    .line 38
    aget-object v9, v4, v8

    .line 39
    .line 40
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    sub-int v12, v11, v10

    .line 49
    .line 50
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    if-ne v12, v13, :cond_0

    .line 55
    .line 56
    const/4 v12, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    move v12, v6

    .line 59
    :goto_1
    instance-of v13, v9, Landroid/text/style/CharacterStyle;

    .line 60
    .line 61
    if-eqz v13, :cond_1

    .line 62
    .line 63
    move-object v13, v9

    .line 64
    check-cast v13, Landroid/text/style/CharacterStyle;

    .line 65
    .line 66
    invoke-virtual {v13}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    move-object v13, v9

    .line 72
    :goto_2
    instance-of v14, v13, Landroid/text/style/TextAppearanceSpan;

    .line 73
    .line 74
    if-eqz v14, :cond_5

    .line 75
    .line 76
    move-object v14, v13

    .line 77
    check-cast v14, Landroid/text/style/TextAppearanceSpan;

    .line 78
    .line 79
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    if-eqz v15, :cond_3

    .line 84
    .line 85
    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getColors()[I

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    array-length v6, v13

    .line 90
    move-object/from16 v16, v4

    .line 91
    .line 92
    new-array v4, v6, [I

    .line 93
    .line 94
    move/from16 v17, v7

    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    :goto_3
    if-ge v7, v6, :cond_2

    .line 98
    .line 99
    move/from16 v18, v6

    .line 100
    .line 101
    aget v6, v13, v7

    .line 102
    .line 103
    move-object/from16 v19, v13

    .line 104
    .line 105
    iget-boolean v13, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 106
    .line 107
    invoke-static {v6, v2, v13}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    aput v6, v4, v7

    .line 112
    .line 113
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    move/from16 v6, v18

    .line 116
    .line 117
    move-object/from16 v13, v19

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_2
    new-instance v6, Landroid/content/res/ColorStateList;

    .line 121
    .line 122
    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getStates()[[I

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-virtual {v7}, [[I->clone()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    check-cast v7, [[I

    .line 131
    .line 132
    invoke-direct {v6, v7, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 133
    .line 134
    .line 135
    new-instance v13, Landroid/text/style/TextAppearanceSpan;

    .line 136
    .line 137
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v21

    .line 141
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    .line 142
    .line 143
    .line 144
    move-result v22

    .line 145
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    .line 146
    .line 147
    .line 148
    move-result v23

    .line 149
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    .line 150
    .line 151
    .line 152
    move-result-object v25

    .line 153
    move-object/from16 v20, v13

    .line 154
    .line 155
    move-object/from16 v24, v6

    .line 156
    .line 157
    invoke-direct/range {v20 .. v25}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 158
    .line 159
    .line 160
    if-eqz v12, :cond_4

    .line 161
    .line 162
    new-instance v7, Landroid/content/res/ColorStateList;

    .line 163
    .line 164
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getStates()[[I

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v6}, [[I->clone()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    check-cast v6, [[I

    .line 173
    .line 174
    invoke-direct {v7, v6, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 175
    .line 176
    .line 177
    const/4 v4, 0x0

    .line 178
    aput-object v7, p3, v4

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_3
    move-object/from16 v16, v4

    .line 182
    .line 183
    move/from16 v17, v7

    .line 184
    .line 185
    :cond_4
    :goto_4
    const/4 v6, 0x0

    .line 186
    goto :goto_5

    .line 187
    :cond_5
    move-object/from16 v16, v4

    .line 188
    .line 189
    move/from16 v17, v7

    .line 190
    .line 191
    instance-of v4, v13, Landroid/text/style/ForegroundColorSpan;

    .line 192
    .line 193
    if-eqz v4, :cond_6

    .line 194
    .line 195
    check-cast v13, Landroid/text/style/ForegroundColorSpan;

    .line 196
    .line 197
    invoke-virtual {v13}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    iget-boolean v6, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 202
    .line 203
    invoke-static {v4, v2, v6}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    .line 208
    .line 209
    invoke-direct {v13, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 210
    .line 211
    .line 212
    if-eqz v12, :cond_4

    .line 213
    .line 214
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    const/4 v6, 0x0

    .line 219
    aput-object v4, p3, v6

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_6
    const/4 v6, 0x0

    .line 223
    move-object v13, v9

    .line 224
    :goto_5
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    invoke-virtual {v5, v13, v10, v11, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 229
    .line 230
    .line 231
    add-int/lit8 v8, v8, 0x1

    .line 232
    .line 233
    move-object/from16 v4, v16

    .line 234
    .line 235
    move/from16 v7, v17

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_7
    return-object v5

    .line 240
    :cond_8
    return-object v1
.end method

.method private ensureColors()V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    iget v1, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    iget v1, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    iget v1, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 19
    .line 20
    if-eq v1, v0, :cond_d

    .line 21
    .line 22
    :cond_0
    iput v0, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 23
    .line 24
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-wide/high16 v3, 0x4012000000000000L    # 4.5

    .line 29
    .line 30
    if-eqz v1, :cond_a

    .line 31
    .line 32
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    iget v1, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 45
    .line 46
    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    iget v1, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    .line 53
    .line 54
    .line 55
    move-result-wide v9

    .line 56
    cmpl-double v1, v5, v7

    .line 57
    .line 58
    if-lez v1, :cond_2

    .line 59
    .line 60
    const/high16 v1, -0x1000000

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    :cond_2
    cmpg-double v1, v5, v7

    .line 69
    .line 70
    if-gtz v1, :cond_4

    .line 71
    .line 72
    const/4 v1, -0x1

    .line 73
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_4

    .line 78
    .line 79
    :cond_3
    move v1, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const/4 v1, 0x0

    .line 82
    :goto_0
    cmpg-double v5, v9, v3

    .line 83
    .line 84
    const/16 v6, -0x14

    .line 85
    .line 86
    const/16 v7, 0xa

    .line 87
    .line 88
    if-gez v5, :cond_6

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    iget v1, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 93
    .line 94
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iput v1, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 99
    .line 100
    invoke-static {v1, v6}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iput v1, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 105
    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_5
    iget v1, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 109
    .line 110
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    iput v1, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 115
    .line 116
    invoke-static {v1, v7}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iput v1, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_6
    iget v5, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 124
    .line 125
    iput v5, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 126
    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    const/16 v8, 0x14

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    const/16 v8, -0xa

    .line 133
    .line 134
    :goto_1
    invoke-static {v5, v8}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    iput v5, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 139
    .line 140
    invoke-static {v5, v0}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    .line 141
    .line 142
    .line 143
    move-result-wide v8

    .line 144
    cmpg-double v5, v8, v3

    .line 145
    .line 146
    if-gez v5, :cond_c

    .line 147
    .line 148
    if-eqz v1, :cond_8

    .line 149
    .line 150
    iget v5, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 151
    .line 152
    invoke-static {v5, v0, v2, v3, v4}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    iput v2, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_8
    iget v5, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 160
    .line 161
    invoke-static {v5, v0, v2, v3, v4}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    iput v2, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 166
    .line 167
    :goto_2
    iget v2, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 168
    .line 169
    if-eqz v1, :cond_9

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_9
    move v6, v7

    .line 173
    :goto_3
    invoke-static {v2, v6}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    iput v1, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_a
    :goto_4
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolvePrimaryColor(Landroid/content/Context;I)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    iput v1, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 187
    .line 188
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveSecondaryColor(Landroid/content/Context;I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iput v1, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 195
    .line 196
    if-eqz v0, :cond_c

    .line 197
    .line 198
    iget v1, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    .line 199
    .line 200
    if-ne v1, v2, :cond_b

    .line 201
    .line 202
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_c

    .line 207
    .line 208
    :cond_b
    iget v1, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 209
    .line 210
    invoke-static {v1, v0, v3, v4}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    iput v1, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 215
    .line 216
    iget v1, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 217
    .line 218
    invoke-static {v1, v0, v3, v4}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    iput v1, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 223
    .line 224
    :cond_c
    :goto_5
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 225
    .line 226
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveActionBarColor(Landroid/content/Context;I)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    iput v0, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    .line 231
    .line 232
    :cond_d
    return-void
.end method

.method private findReplyAction()Landroid/app/Notification$Action;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v0, v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/app/Notification$Action;

    .line 20
    .line 21
    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method

.method private generateActionButton(Landroid/app/Notification$Action;ZZZ)Landroid/widget/RemoteViews;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iget-object v2, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    move v2, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v4

    .line 12
    :goto_0
    new-instance v12, Landroid/app/Notification$BuilderRemoteViews;

    .line 13
    .line 14
    iget-object v5, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    :goto_1
    invoke-direct {v12, v5, v6}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 39
    .line 40
    .line 41
    const v13, 0x1020173

    .line 42
    .line 43
    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    iget-object v2, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 47
    .line 48
    invoke-virtual {v12, v13, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object v2, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 52
    .line 53
    invoke-virtual {v12, v13, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Landroid/app/Notification$Action;->access$1400(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    invoke-static {p1}, Landroid/app/Notification$Action;->access$1400(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v12, v13, v2}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    if-eqz p2, :cond_a

    .line 70
    .line 71
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    if-eqz p3, :cond_5

    .line 78
    .line 79
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionBarColor()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionBarColorDeEmphasized()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    if-eqz p3, :cond_7

    .line 92
    .line 93
    const v5, 0x10600e9

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_7
    const v5, 0x10600ea

    .line 98
    .line 99
    .line 100
    :goto_2
    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    :goto_3
    const v6, 0x10201da

    .line 105
    .line 106
    .line 107
    const/4 v7, 0x1

    .line 108
    const/4 v8, -0x1

    .line 109
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 110
    .line 111
    const/4 v11, -0x1

    .line 112
    move-object v5, v12

    .line 113
    move v9, v2

    .line 114
    invoke-virtual/range {v5 .. v11}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 118
    .line 119
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_8

    .line 124
    .line 125
    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const/4 v2, 0x0

    .line 130
    goto :goto_4

    .line 131
    :cond_8
    new-array v3, v3, [Landroid/content/res/ColorStateList;

    .line 132
    .line 133
    invoke-direct {p0, v1, v2, v3}, Landroid/app/Notification$Builder;->ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    move-object v2, v3

    .line 138
    :goto_4
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v12, v13, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, v12, v13}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    .line 146
    .line 147
    .line 148
    if-eqz v2, :cond_9

    .line 149
    .line 150
    aget-object v1, v2, v4

    .line 151
    .line 152
    if-eqz v1, :cond_9

    .line 153
    .line 154
    invoke-virtual {v12, v13, v1}, Landroid/widget/RemoteViews;->setTextColor(ILandroid/content/res/ColorStateList;)V

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_9
    iget-object v1, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 159
    .line 160
    iget v1, v1, Landroid/app/Notification;->color:I

    .line 161
    .line 162
    if-eqz v1, :cond_d

    .line 163
    .line 164
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_d

    .line 169
    .line 170
    iget-boolean v1, v0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    .line 171
    .line 172
    if-eqz v1, :cond_d

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {v12, v13, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 179
    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_a
    iget-object v1, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 183
    .line 184
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v12, v13, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_b

    .line 200
    .line 201
    if-nez p4, :cond_b

    .line 202
    .line 203
    invoke-direct {p0, v12, v13}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    .line 204
    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_b
    iget-object v1, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 208
    .line 209
    iget v1, v1, Landroid/app/Notification;->color:I

    .line 210
    .line 211
    if-eqz v1, :cond_d

    .line 212
    .line 213
    iget-boolean v1, v0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    .line 214
    .line 215
    if-eqz v1, :cond_d

    .line 216
    .line 217
    if-eqz p4, :cond_c

    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    goto :goto_5

    .line 224
    :cond_c
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    :goto_5
    invoke-virtual {v12, v13, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 229
    .line 230
    .line 231
    :cond_d
    :goto_6
    return-object v12
.end method

.method private getActionBarColor()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/app/Notification$Builder;->mActionBarColor:I

    .line 5
    .line 6
    return v0
.end method

.method private getActionBarColorDeEmphasized()I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->getShiftedColor(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private getActionLayoutResource()I
    .locals 1

    const v0, 0x1090088

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    const v0, 0x109008b

    return v0
.end method

.method private getAllExtras()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Bundle;

    .line 8
    .line 9
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 10
    .line 11
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method private getBackgroundColor()I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 14
    .line 15
    iget v0, v0, Landroid/app/Notification;->color:I

    .line 16
    .line 17
    :goto_0
    return v0

    .line 18
    :cond_1
    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    :goto_1
    return v0
.end method

.method private getBaseLayoutResource()I
    .locals 1

    const v0, 0x1090091

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    const v0, 0x1090092

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    const v0, 0x1090094

    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    const v0, 0x1090095

    return v0
.end method

.method private getColorUtil()Lcom/android/internal/util/NotificationColorUtil;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 14
    .line 15
    return-object v0
.end method

.method private getEmphasizedActionLayoutResource()I
    .locals 1

    const v0, 0x1090089

    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    const v0, 0x1090096

    return v0
.end method

.method private getMessagingLayoutResource()I
    .locals 1

    const v0, 0x1090098

    return v0
.end method

.method private getPrimaryHighlightColor()I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x10500fd

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 23
    .line 24
    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Landroid/graphics/Canvas;

    .line 29
    .line 30
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 38
    .line 39
    .line 40
    return-object v2
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroid/os/UserHandle;

    .line 18
    .line 19
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method private handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z
    .locals 4

    .line 1
    const-string v0, "android.progressMax"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v2, "android.progress"

    .line 9
    .line 10
    invoke-virtual {p3, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "android.progressIndeterminate"

    .line 15
    .line 16
    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    const v3, 0x102000d

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v3, v0, v2, p3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const p3, 0x10600f0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2, v3, p1}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 52
    .line 53
    iget p1, p1, Landroid/app/Notification;->color:I

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p2, v3, p1}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v3, p1}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    const/4 p1, 0x1

    .line 72
    return p1

    .line 73
    :cond_2
    const/16 p1, 0x8

    .line 74
    .line 75
    invoke-virtual {p2, v3, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 76
    .line 77
    .line 78
    return v1
.end method

.method private hasForegroundColor()Z
    .locals 2

    iget v0, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    array-length v0, p1

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v2, v0, :cond_4

    .line 25
    .line 26
    aget-object v3, p1, v2

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    array-length v3, v4

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_4
    :goto_2
    return v1
.end method

.method private hideLine1Text(Landroid/widget/RemoteViews;)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x1020436

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_0
    return-void
.end method

.method private isColorized()Z
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    return v0
.end method

.method private isLegacy()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 12
    .line 13
    const/16 v1, 0x15

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    .line 22
    .line 23
    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    .line 24
    .line 25
    :cond_1
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    .line 26
    .line 27
    return v0
.end method

.method public static makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string/jumbo v0, "setExpanded"

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const v2, 0x102032a

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private makePublicView(Z)Landroid/widget/RemoteViews;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    return-object p1

    .line 25
    :cond_1
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 26
    .line 27
    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    iput-object v3, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/app/Notification;->access$1000(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 37
    .line 38
    invoke-static {v4, v3}, Landroid/app/Notification;->access$1002(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 42
    .line 43
    iget-object v5, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    iput-object v3, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 46
    .line 47
    iget-object v3, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance v4, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 55
    .line 56
    new-instance v4, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v6, "android.showWhen"

    .line 62
    .line 63
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    const-string v6, "android.showChronometer"

    .line 71
    .line 72
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    const-string v6, "android.chronometerCountDown"

    .line 80
    .line 81
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 89
    .line 90
    iput-object v4, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 91
    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    const v6, 0x10403df

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v6, "android.title"

    .line 104
    .line 105
    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string/jumbo v4, "setExpandOnlyOnButton"

    .line 119
    .line 120
    .line 121
    const/4 v6, 0x1

    .line 122
    const v7, 0x102032a

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v7, v4, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    :goto_1
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 129
    .line 130
    iput-object v1, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 131
    .line 132
    invoke-static {v4, v0}, Landroid/app/Notification;->access$1002(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 136
    .line 137
    iput-object v5, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 138
    .line 139
    iput-object v3, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 140
    .line 141
    iput-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 142
    .line 143
    return-object p1
.end method

.method public static maybeCloneStrippedForDelivery(Landroid/app/Notification;Z)Landroid/app/Notification;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "android.template"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 25
    .line 26
    instance-of v0, v0, Landroid/app/Notification$BuilderRemoteViews;

    .line 27
    .line 28
    const-string v1, "android.rebuild.contentViewActionCount"

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, -0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-ne v0, v5, :cond_1

    .line 48
    .line 49
    move v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v0, v4

    .line 52
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 53
    .line 54
    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    .line 55
    .line 56
    const-string v6, "android.rebuild.bigViewActionCount"

    .line 57
    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    iget-object v7, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 67
    .line 68
    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-ne v5, v7, :cond_2

    .line 73
    .line 74
    move v5, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v5, v4

    .line 77
    :goto_1
    iget-object v7, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 78
    .line 79
    instance-of v7, v7, Landroid/app/Notification$BuilderRemoteViews;

    .line 80
    .line 81
    const-string v8, "android.rebuild.hudViewActionCount"

    .line 82
    .line 83
    if-eqz v7, :cond_3

    .line 84
    .line 85
    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 86
    .line 87
    invoke-virtual {v7, v8, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    iget-object v7, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 92
    .line 93
    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-ne v3, v7, :cond_3

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move v2, v4

    .line 101
    :goto_2
    if-nez p1, :cond_4

    .line 102
    .line 103
    if-nez v0, :cond_4

    .line 104
    .line 105
    if-nez v5, :cond_4

    .line 106
    .line 107
    if-nez v2, :cond_4

    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_4
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const/4 v3, 0x0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    iput-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 118
    .line 119
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    if-eqz v5, :cond_6

    .line 125
    .line 126
    iput-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 127
    .line 128
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 129
    .line 130
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    if-eqz v2, :cond_7

    .line 134
    .line 135
    iput-object v3, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 136
    .line 137
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 138
    .line 139
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    if-eqz p1, :cond_8

    .line 143
    .line 144
    iget-object p1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 145
    .line 146
    const-string v0, "android.tv.EXTENSIONS"

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 152
    .line 153
    const-string v0, "android.wearable.EXTENSIONS"

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 159
    .line 160
    const-string v0, "android.car.EXTENSIONS"

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_8
    return-object p0
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const v1, 0x1020006

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, -0x1

    .line 26
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 31
    .line 32
    const/4 v6, -0x1

    .line 33
    move-object v0, p2

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->textColorsNeedInversion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eq v0, p2, :cond_2

    .line 3
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getPrimaryHighlightColor()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const v1, 0x1020006

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, -0x1

    .line 29
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 30
    .line 31
    const/4 v6, -0x1

    .line 32
    move-object v0, p2

    .line 33
    move v4, p3

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 p3, 0x1

    .line 41
    :goto_1
    const p1, 0x102032a

    .line 42
    .line 43
    .line 44
    const-string/jumbo v0, "setOriginalIconColor"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    return-object p1
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "android.appInfo"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "ApplicationInfo "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " not found"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "Notification"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private resetContentMargins(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 1
    const v0, 0x10202d7

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 6
    .line 7
    .line 8
    const v0, 0x102041b

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setExpanded"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x102032a

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const v0, 0x10201ad

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x10201f5

    .line 19
    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 24
    .line 25
    .line 26
    const v0, 0x1020281

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    const v0, 0x1020282

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 39
    .line 40
    .line 41
    const v0, 0x102043e

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 45
    .line 46
    .line 47
    const v0, 0x102043a

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 51
    .line 52
    .line 53
    const v0, 0x102037c

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetContentMargins(Landroid/widget/RemoteViews;)V

    .line 5
    .line 6
    .line 7
    const v0, 0x102039c

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13
    .line 14
    .line 15
    const v0, 0x1020016

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    const v0, 0x102041b

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const v0, 0x1020436

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    const v0, 0x102018a

    .line 2
    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 10
    .line 11
    .line 12
    const v0, 0x102032c

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 16
    .line 17
    .line 18
    const v0, 0x102032d

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    const v0, 0x102032e

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const v0, 0x102032f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    const v0, 0x1020328

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private sanitizeColor()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    iget v1, v0, Landroid/app/Notification;->color:I

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/high16 v2, -0x1000000

    .line 8
    .line 9
    or-int/2addr v1, v2

    .line 10
    iput v1, v0, Landroid/app/Notification;->color:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 5
    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 5
    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private shouldTintActionButtons()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    return v0
.end method

.method private showsTimeOrChronometer()Z
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private textColorsNeedInversion()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-class v2, Landroid/app/Notification$MediaStyle;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 26
    .line 27
    const/16 v2, 0x17

    .line 28
    .line 29
    if-le v0, v2, :cond_1

    .line 30
    .line 31
    const/16 v2, 0x1a

    .line 32
    .line 33
    if-ge v0, v2, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_1
    :goto_0
    return v1
.end method

.method private updateBackgroundColor(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x1020409

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo v0, "setBackgroundColor"

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string/jumbo v0, "setBackgroundResource"

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private useExistingRemoteView()Z
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mRebuildStyledRemoteViews:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-static {v0, v1, v2}, Landroid/app/Notification;->access$1502(Landroid/app/Notification;J)J

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 47
    .line 48
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 54
    .line 55
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 67
    .line 68
    const/16 v1, 0x18

    .line 69
    .line 70
    if-ge v0, v1, :cond_4

    .line 71
    .line 72
    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 79
    .line 80
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 89
    .line 90
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 91
    .line 92
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 93
    .line 94
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    const-string v2, "android.rebuild.contentViewActionCount"

    .line 101
    .line 102
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 106
    .line 107
    iget-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 108
    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 116
    .line 117
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 118
    .line 119
    iget-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 120
    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 124
    .line 125
    const-string v2, "android.rebuild.bigViewActionCount"

    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 135
    .line 136
    iget-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 137
    .line 138
    if-nez v1, :cond_4

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 145
    .line 146
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 147
    .line 148
    iget-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 149
    .line 150
    if-eqz v1, :cond_4

    .line 151
    .line 152
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 153
    .line 154
    const-string v2, "android.rebuild.hudViewActionCount"

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 164
    .line 165
    iget v1, v0, Landroid/app/Notification;->defaults:I

    .line 166
    .line 167
    and-int/lit8 v1, v1, 0x4

    .line 168
    .line 169
    if-eqz v1, :cond_5

    .line 170
    .line 171
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 172
    .line 173
    or-int/lit8 v1, v1, 0x1

    .line 174
    .line 175
    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 176
    .line 177
    :cond_5
    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-array v1, v1, [Landroid/app/Notification$Action;

    .line 18
    .line 19
    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 20
    .line 21
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 24
    .line 25
    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 39
    .line 40
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 41
    .line 42
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    new-array v2, v2, [Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, [Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, "android.people"

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 62
    .line 63
    iget-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 68
    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    iget-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    :cond_2
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 76
    .line 77
    const-string v1, "android.contains.customView"

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 84
    .line 85
    return-object v0
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 14
    .line 15
    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Notification$Style;->makeBigContentView()Landroid/widget/RemoteViews;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->hideLine1Text(Landroid/widget/RemoteViews;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-static {v0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createContentView(Z)Landroid/widget/RemoteViews;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 6
    :cond_1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public createHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0

    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextColor()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 5
    .line 6
    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 5
    .line 6
    return v0
.end method

.method public loadHeaderAppName()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 8
    .line 9
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 10
    .line 11
    const-string v2, "android.substName"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 27
    .line 28
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v4, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    .line 35
    .line 36
    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v5, "warning: pkg "

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " attempting to substitute app name \'"

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, "\' without holding perm android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    .line 63
    .line 64
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "Notification"

    .line 72
    .line 73
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_1
    move-object v2, v3

    .line 77
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    return-object v3

    .line 100
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0
.end method

.method public makeAmbientNotification()Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->ambient(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x1090090

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    iget v1, v0, Landroid/app/Notification;->color:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Landroid/app/Notification;->color:I

    .line 7
    .line 8
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 9
    .line 10
    const-string v3, "android.subText"

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createSummaryText()Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 35
    .line 36
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-virtual {v4, v3, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string/jumbo v2, "setAcceptAllTouches"

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    const v5, 0x102032a

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v5, v2, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 58
    .line 59
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 60
    .line 61
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 66
    .line 67
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 73
    .line 74
    iput v1, v0, Landroid/app/Notification;->color:I

    .line 75
    .line 76
    return-object p1
.end method

.method public makeNotificationHeader(Z)Landroid/widget/RemoteViews;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string v1, "android.colorized"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 14
    .line 15
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Landroid/app/Notification$BuilderRemoteViews;

    .line 22
    .line 23
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const v4, 0x109008e

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const v4, 0x109008f

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-direct {v2, v3, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v2, p1}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Z)V

    .line 45
    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 50
    .line 51
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 62
    .line 63
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-object v2
.end method

.method public makePublicAmbientNotification()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makePublicContentView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public resolveAmbientColor()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 4
    .line 5
    iget v1, v1, Landroid/app/Notification;->color:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolveAmbientColor(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 22
    .line 23
    iget v1, v1, Landroid/app/Notification;->color:I

    .line 24
    .line 25
    iput v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    .line 26
    .line 27
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    .line 28
    .line 29
    return v0
.end method

.method public resolveContrastColor()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 4
    .line 5
    iget v1, v1, Landroid/app/Notification;->color:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    .line 16
    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const v1, 0x10600ed

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 29
    .line 30
    iget v1, v1, Landroid/app/Notification;->color:I

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 35
    .line 36
    .line 37
    iget v1, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iget-boolean v3, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 43
    .line 44
    invoke-static {v2, v1, v0, v3}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/16 v3, 0xff

    .line 53
    .line 54
    if-ge v2, v3, :cond_3

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->compositeColors(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 61
    .line 62
    iget v0, v0, Landroid/app/Notification;->color:I

    .line 63
    .line 64
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 65
    .line 66
    iput v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    .line 67
    .line 68
    return v1
.end method

.method public varargs setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    aget-object v1, p1, v0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-object p0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setBackgroundColorHint(I)V
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColorHint:I

    return-void
.end method

.method public setBadgeIconType(I)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$602(Landroid/app/Notification;I)I

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$402(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$402(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    iput p1, v0, Landroid/app/Notification;->color:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public setColorPalette(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    .line 2
    .line 3
    iput p2, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setColorized(Z)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.infoText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentMinHeight(Landroid/widget/RemoteViews;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x1050122

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    :goto_0
    const v0, 0x102032b

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "setMinimumHeight"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    :cond_0
    return-object p0
.end method

.method public setFlag(IZ)Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 4
    .line 5
    iget v0, p2, Landroid/app/Notification;->flags:I

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p2, Landroid/app/Notification;->flags:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 12
    .line 13
    iget v0, p2, Landroid/app/Notification;->flags:I

    .line 14
    .line 15
    not-int p1, p1

    .line 16
    and-int/2addr p1, v0

    .line 17
    iput p1, p2, Landroid/app/Notification;->flags:I

    .line 18
    .line 19
    :goto_0
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 4
    .line 5
    const/16 p1, 0x80

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setGroupAlertBehavior(I)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$702(Landroid/app/Notification;I)I

    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1002(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 4
    .line 5
    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 6
    .line 7
    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    :cond_0
    iget p1, v0, Landroid/app/Notification;->flags:I

    .line 14
    .line 15
    or-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 18
    .line 19
    :cond_1
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string v1, "android.progress"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 11
    .line 12
    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 13
    .line 14
    const-string v0, "android.progressMax"

    .line 15
    .line 16
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 20
    .line 21
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string p2, "android.progressIndeterminate"

    .line 24
    .line 25
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 4
    .line 5
    new-instance v1, Landroid/app/Notification;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 11
    .line 12
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 13
    .line 14
    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 25
    .line 26
    :goto_0
    return-object p0
.end method

.method public setRebuildStyledRemoteViews(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mRebuildStyledRemoteViews:Z

    return-void
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 5

    .line 1
    const-string v0, "android.remoteInputHistory"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 6
    .line 7
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v1, 0x5

    .line 15
    array-length v2, p1

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v1, :cond_1

    .line 24
    .line 25
    aget-object v4, p1, v3

    .line 26
    .line 27
    invoke-static {v4}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    aput-object v4, v2, v3

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 37
    .line 38
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-object p0
.end method

.method public setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/app/Notification;->access$902(Landroid/app/Notification;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2

    .line 6
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p1

    iput p1, v0, Landroid/app/Notification;->icon:I

    :cond_0
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1202(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2
    sget-object p1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object p1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Notification"

    const-string/jumbo v1, "setSound()"

    .line 3
    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 5
    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 7
    iput-object p2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 6
    .line 7
    const-string v0, "android.template"

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 15
    .line 16
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 31
    .line 32
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setTimeout(J)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->access$802(Landroid/app/Notification;J)J

    return-object p0
.end method

.method public setTimeoutAfter(J)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->access$802(Landroid/app/Notification;J)J

    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method
