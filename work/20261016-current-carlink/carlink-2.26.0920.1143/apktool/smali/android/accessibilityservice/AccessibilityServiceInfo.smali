.class public Landroid/accessibilityservice/AccessibilityServiceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CAN_CONTROL_MAGNIFICATION:I = 0x10

.field public static final CAPABILITY_CAN_PERFORM_GESTURES:I = 0x20

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_FINGERPRINT_GESTURES:I = 0x40

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:I = 0x1

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_AUDIBLE:I = 0x4

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FEEDBACK_GENERIC:I = 0x10

.field public static final FEEDBACK_HAPTIC:I = 0x2

.field public static final FEEDBACK_SPOKEN:I = 0x1

.field public static final FEEDBACK_VISUAL:I = 0x8

.field public static final FLAG_ENABLE_ACCESSIBILITY_VOLUME:I = 0x80

.field public static final FLAG_FORCE_DIRECT_BOOT_AWARE:I = 0x10000

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ACCESSIBILITY_BUTTON:I = 0x100

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_FINGERPRINT_GESTURES:I = 0x200

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4

.field public static final FLAG_RETRIEVE_INTERACTIVE_WINDOWS:I = 0x40

.field private static final TAG_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "accessibility-service"

.field private static sAvailableCapabilityInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public eventTypes:I

.field public feedbackType:I

.field public flags:I

.field private mCapabilities:I

.field private mComponentName:Landroid/content/ComponentName;

.field private mDescriptionResId:I

.field private mNonLocalizedDescription:Ljava/lang/String;

.field private mNonLocalizedSummary:Ljava/lang/String;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mSettingsActivityName:Ljava/lang/String;

.field private mSummaryResId:I

.field public notificationTimeout:J

.field public packageNames:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo$1;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 5
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 p1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v1, "android.accessibilityservice"

    .line 7
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    .line 9
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "accessibility-service"

    .line 11
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 12
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 13
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p2

    .line 14
    sget-object v5, Lcom/android/internal/R$styleable;->AccessibilityService:[I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v2, 0x3

    .line 15
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    const/4 v2, 0x4

    .line 16
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v5, "(\\s)*,(\\s)*"

    .line 17
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    :cond_3
    const/4 v2, 0x5

    .line 18
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/4 v2, 0x6

    .line 19
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v5, v2

    iput-wide v5, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    const/4 v2, 0x7

    .line 20
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 21
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    const/16 v2, 0x8

    .line 22
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 23
    iget v5, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/2addr v5, v4

    iput v5, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    :cond_4
    const/16 v5, 0x9

    .line 24
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 25
    iget v5, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    :cond_5
    const/16 v3, 0xb

    .line 26
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 27
    iget v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/2addr v2, v3

    iput v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    :cond_6
    const/16 v2, 0xc

    .line 28
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 29
    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    :cond_7
    const/16 v2, 0xd

    .line 30
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 31
    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    :cond_8
    const/16 v2, 0xe

    .line 32
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 33
    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 34
    :cond_9
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 35
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    iput v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    .line 36
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 37
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    .line 38
    :cond_a
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 39
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    iput v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    .line 40
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 41
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    .line 42
    :cond_b
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-void

    .line 44
    :cond_c
    :try_start_2
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Meta-data does not start withaccessibility-service tag"

    invoke-direct {p2, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 45
    :catch_0
    :try_start_3
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create context for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p1, :cond_d

    .line 46
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_d
    throw p2
.end method

.method public static synthetic access$000(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private static appendCapabilities(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 1
    const-string v0, "capabilities:"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const-string v0, "["

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    shl-int/2addr v0, v1

    .line 19
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->capabilityToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    not-int v0, v0

    .line 27
    and-int/2addr p1, v0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const-string v0, ", "

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p1, "]"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private static appendEventTypes(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 1
    const-string v0, "eventTypes:"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const-string v0, "["

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    shl-int/2addr v0, v1

    .line 19
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    not-int v0, v0

    .line 27
    and-int/2addr p1, v0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const-string v0, ", "

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p1, "]"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private static appendFeedbackTypes(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 1
    const-string v0, "feedbackTypes:"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const-string v0, "["

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    shl-int/2addr v0, v1

    .line 19
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    not-int v0, v0

    .line 27
    and-int/2addr p1, v0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const-string v0, ", "

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p1, "]"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private static appendFlags(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 1
    const-string v0, "flags:"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const-string v0, "["

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    shl-int/2addr v0, v1

    .line 19
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->flagToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    not-int v0, v0

    .line 27
    and-int/2addr p1, v0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const-string v0, ", "

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p1, "]"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private static appendPackageNames(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "packageNames:"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    const-string v0, "["

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    array-length v0, p1

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    aget-object v2, p1, v1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v0, -0x1

    .line 24
    .line 25
    if-ge v1, v2, :cond_0

    .line 26
    .line 27
    const-string v2, ", "

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string p1, "]"

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "CAPABILITY_CAN_REQUEST_FINGERPRINT_GESTURES"

    return-object p0

    :cond_1
    const-string p0, "CAPABILITY_CAN_PERFORM_GESTURES"

    return-object p0

    :cond_2
    const-string p0, "CAPABILITY_CAN_CONTROL_MAGNIFICATION"

    return-object p0

    :cond_3
    const-string p0, "CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS"

    return-object p0

    :cond_4
    const-string p0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    return-object p0

    :cond_5
    const-string p0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    return-object p0

    :cond_6
    const-string p0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    return-object p0
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz p0, :cond_c

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    shl-int v1, v2, v1

    .line 15
    .line 16
    not-int v3, v1

    .line 17
    and-int/2addr p0, v3

    .line 18
    const-string v3, ", "

    .line 19
    .line 20
    if-eq v1, v2, :cond_a

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-eq v1, v4, :cond_8

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    if-eq v1, v4, :cond_6

    .line 27
    .line 28
    const/16 v4, 0x8

    .line 29
    .line 30
    if-eq v1, v4, :cond_4

    .line 31
    .line 32
    const/16 v4, 0x10

    .line 33
    .line 34
    if-eq v1, v4, :cond_2

    .line 35
    .line 36
    const/16 v4, 0x20

    .line 37
    .line 38
    if-eq v1, v4, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-le v1, v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_1
    const-string v1, "FEEDBACK_BRAILLE"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-le v1, v2, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_3
    const-string v1, "FEEDBACK_GENERIC"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-le v1, v2, :cond_5

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_5
    const-string v1, "FEEDBACK_VISUAL"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-le v1, v2, :cond_7

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_7
    const-string v1, "FEEDBACK_AUDIBLE"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-le v1, v2, :cond_9

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_9
    const-string v1, "FEEDBACK_HAPTIC"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-le v1, v2, :cond_b

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :cond_b
    const-string v1, "FEEDBACK_SPOKEN"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_c
    const-string p0, "]"

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0
.end method

.method private static fingerprintAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.hardware.fingerprint"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method public static flagToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x4

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x10

    if-eq p0, v0, :cond_5

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "FLAG_REQUEST_FINGERPRINT_GESTURES"

    return-object p0

    :cond_1
    const-string p0, "FLAG_REQUEST_ACCESSIBILITY_BUTTON"

    return-object p0

    :cond_2
    const-string p0, "FLAG_ENABLE_ACCESSIBILITY_VOLUME"

    return-object p0

    :cond_3
    const-string p0, "FLAG_RETRIEVE_INTERACTIVE_WINDOWS"

    return-object p0

    :cond_4
    const-string p0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    return-object p0

    :cond_5
    const-string p0, "FLAG_REPORT_VIEW_IDS"

    return-object p0

    :cond_6
    const-string p0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    return-object p0

    :cond_7
    const-string p0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    return-object p0

    :cond_8
    const-string p0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    return-object p0

    :cond_9
    const-string p0, "DEFAULT"

    return-object p0
.end method

.method private static getCapabilityInfoSparseArray(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 13
    .line 14
    const v2, 0x10400f5

    .line 15
    .line 16
    .line 17
    const v3, 0x10400ef

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    .line 28
    .line 29
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 30
    .line 31
    const v2, 0x10400f4

    .line 32
    .line 33
    .line 34
    const v3, 0x10400ee

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    .line 45
    .line 46
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 47
    .line 48
    const v2, 0x10400f3

    .line 49
    .line 50
    .line 51
    const v3, 0x10400ed

    .line 52
    .line 53
    .line 54
    const/16 v4, 0x8

    .line 55
    .line 56
    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    .line 63
    .line 64
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 65
    .line 66
    const v2, 0x10400f1

    .line 67
    .line 68
    .line 69
    const v3, 0x10400eb

    .line 70
    .line 71
    .line 72
    const/16 v4, 0x10

    .line 73
    .line 74
    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    .line 81
    .line 82
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 83
    .line 84
    const v2, 0x10400f2

    .line 85
    .line 86
    .line 87
    const v3, 0x10400ec

    .line 88
    .line 89
    .line 90
    const/16 v4, 0x20

    .line 91
    .line 92
    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    if-eqz p0, :cond_0

    .line 99
    .line 100
    invoke-static {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->fingerprintAvailable(Landroid/content/Context;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_1

    .line 105
    .line 106
    :cond_0
    sget-object p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    .line 107
    .line 108
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 109
    .line 110
    const v1, 0x10400f0

    .line 111
    .line 112
    .line 113
    const v2, 0x10400ea

    .line 114
    .line 115
    .line 116
    const/16 v3, 0x40

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_1
    sget-object p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    .line 125
    .line 126
    return-object p0
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/content/ComponentName;

    .line 44
    .line 45
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 53
    .line 54
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    check-cast p1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 21
    .line 22
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 23
    .line 24
    if-nez v2, :cond_3

    .line 25
    .line 26
    iget-object p1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget-object p1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_4

    .line 38
    .line 39
    return v1

    .line 40
    :cond_4
    return v0
.end method

.method public getCanRetrieveWindowContent()Z
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getCapabilities()I
    .locals 1

    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    return v0
.end method

.method public getCapabilityInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilityInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 2
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfoSparseArray(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    not-int v3, v2

    and-int/2addr v0, v3

    .line 7
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public isDirectBootAware()Z
    .locals 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

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

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 9
    .line 10
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 11
    .line 12
    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 9
    .line 10
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 11
    .line 12
    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public setCapabilities(I)V
    .locals 0

    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    return-void
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendEventTypes(Ljava/lang/StringBuilder;I)V

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendPackageNames(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 25
    .line 26
    invoke-static {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendFeedbackTypes(Ljava/lang/StringBuilder;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "notificationTimeout: "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 39
    .line 40
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 47
    .line 48
    invoke-static {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendFlags(Ljava/lang/StringBuilder;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string/jumbo v2, "id: "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string/jumbo v2, "resolveInfo: "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string/jumbo v2, "settingsActivityName: "

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string/jumbo v2, "summary: "

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 113
    .line 114
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendCapabilities(Ljava/lang/StringBuilder;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method

.method public updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 2
    .line 3
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 4
    .line 5
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 8
    .line 9
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 10
    .line 11
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 12
    .line 13
    iget-wide v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 14
    .line 15
    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 16
    .line 17
    iget p1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 18
    .line 19
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 20
    .line 21
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    iget p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
