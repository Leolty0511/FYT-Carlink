.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$CallbackImpl;,
        Landroid/content/pm/PackageParser$Callback;,
        Landroid/content/pm/PackageParser$CachedComponentArgs;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$SplitPermissionInfo;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final APK_SIGNING_UNKNOWN:I = 0x0

.field public static final APK_SIGNING_V1:I = 0x1

.field public static final APK_SIGNING_V2:I = 0x2

.field private static final CHILD_PACKAGE_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field private static final LOG_PARSE_TIMINGS:Z

.field private static final LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field private static final LOG_UNSAFE_BROADCASTS:Z = false

.field private static final MAX_PACKAGES_PER_APK:I = 0x5

.field private static final METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field private static final META_DATA_INSTANT_APPS:Ljava/lang/String; = "instantapps.clients.allowed"

.field private static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field private static final MULTI_PACKAGE_APK_ENABLED:Z

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final PARSE_CHATTY:I = 0x2

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x100

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field private static final PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final PARSE_ENFORCE_CODE:I = 0x400

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x20

.field public static final PARSE_FORCE_SDK:I = 0x1000

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_EPHEMERAL:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARSE_IS_PRIVILEGED:I = 0x80

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_TRUSTED_OVERLAY:I = 0x200

.field private static final PROPERTY_CHILD_PACKAGES_ENABLED:Ljava/lang/String; = "persist.sys.child_packages_enabled"

.field private static final RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field private static final RIGID_PARSER:Z = false

.field private static final SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SDK_CODENAMES:[Ljava/lang/String;

.field private static final SDK_VERSION:I

.field public static final SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static final TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field private static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field private static final TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field private static final TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field private static final TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field private static final TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field private static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field private static final TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field private static final TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field private static final TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field private static final TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field private static final TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field private static final TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field private static final TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field private static final TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field private static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field private static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field private static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field private static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static final TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field private static sBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sCompatibilityModeEnabled:Z

.field private static final sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCacheDir:Ljava/io/File;

.field private mCallback:Landroid/content/pm/PackageParser$Callback;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    sput-boolean v0, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v0, "persist.sys.child_packages_enabled"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    sput-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    .line 22
    .line 23
    new-instance v0, Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    .line 29
    .line 30
    const-string v3, "application"

    .line 31
    .line 32
    const-string/jumbo v4, "uses-permission"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v5, "uses-permission-sdk-m"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v6, "uses-permission-sdk-23"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v3, v4, v5, v6}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo v3, "uses-configuration"

    .line 45
    .line 46
    .line 47
    const-string/jumbo v4, "uses-feature"

    .line 48
    .line 49
    .line 50
    const-string v5, "feature-group"

    .line 51
    .line 52
    const-string/jumbo v6, "uses-sdk"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v3, v4, v5, v6}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string/jumbo v3, "supports-screens"

    .line 59
    .line 60
    .line 61
    const-string/jumbo v4, "instrumentation"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v5, "uses-gl-texture"

    .line 65
    .line 66
    .line 67
    const-string v6, "compatible-screens"

    .line 68
    .line 69
    invoke-static {v0, v3, v4, v5, v6}, Landroid/app/m;->n(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v3, "supports-input"

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const-string v3, "eat-comment"

    .line 79
    .line 80
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 86
    .line 87
    .line 88
    sput-object v0, Landroid/content/pm/PackageParser;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    .line 90
    new-instance v0, Landroid/util/ArraySet;

    .line 91
    .line 92
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 93
    .line 94
    .line 95
    sput-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    .line 96
    .line 97
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 98
    .line 99
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x2

    .line 103
    new-array v3, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 104
    .line 105
    new-instance v4, Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 106
    .line 107
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 108
    .line 109
    const/4 v6, 0x4

    .line 110
    invoke-direct {v4, v5, v6, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    .line 111
    .line 112
    .line 113
    aput-object v4, v3, v2

    .line 114
    .line 115
    new-instance v4, Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 116
    .line 117
    const-string v7, "android.permission.READ_PHONE_STATE"

    .line 118
    .line 119
    invoke-direct {v4, v7, v6, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    .line 120
    .line 121
    .line 122
    aput-object v4, v3, v1

    .line 123
    .line 124
    sput-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 125
    .line 126
    const/4 v3, 0x3

    .line 127
    new-array v3, v3, [Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 128
    .line 129
    new-instance v4, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 130
    .line 131
    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    .line 132
    .line 133
    filled-new-array {v6}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    const/16 v7, 0x2711

    .line 138
    .line 139
    invoke-direct {v4, v5, v6, v7}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    aput-object v4, v3, v2

    .line 143
    .line 144
    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 145
    .line 146
    const-string v4, "android.permission.READ_CALL_LOG"

    .line 147
    .line 148
    filled-new-array {v4}, [Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    const-string v5, "android.permission.READ_CONTACTS"

    .line 153
    .line 154
    const/16 v6, 0x10

    .line 155
    .line 156
    invoke-direct {v2, v5, v4, v6}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    aput-object v2, v3, v1

    .line 160
    .line 161
    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 162
    .line 163
    const-string v4, "android.permission.WRITE_CALL_LOG"

    .line 164
    .line 165
    filled-new-array {v4}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const-string v5, "android.permission.WRITE_CONTACTS"

    .line 170
    .line 171
    invoke-direct {v2, v5, v4, v6}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    aput-object v2, v3, v0

    .line 175
    .line 176
    sput-object v3, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 177
    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 179
    .line 180
    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 181
    .line 182
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    .line 183
    .line 184
    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 185
    .line 186
    sput-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 187
    .line 188
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    .line 189
    .line 190
    const/4 v1, 0x0

    .line 191
    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$1;)V

    .line 192
    .line 193
    .line 194
    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    .line 195
    .line 196
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 197
    .line 198
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 199
    .line 200
    .line 201
    sput-object v0, Landroid/content/pm/PackageParser;->sBuffer:Ljava/lang/ThreadLocal;

    .line 202
    .line 203
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 6
    .line 7
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$400(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 0

    invoke-static/range {p0 .. p11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 23
    .line 24
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 25
    .line 26
    const v2, -0x400001

    .line 27
    .line 28
    .line 29
    and-int/2addr v1, v2

    .line 30
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-gtz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/16 v0, 0x2e

    .line 20
    .line 21
    if-ne p2, v0, :cond_1

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-gez p2, :cond_2

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_2
    return-object p1

    .line 51
    :cond_3
    :goto_0
    const-string p1, "Empty class name in package "

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    aput-object p0, p2, v0

    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, ": "

    .line 11
    .line 12
    const-string v3, "Invalid "

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v6, " in package "

    .line 17
    .line 18
    const-string v7, " name "

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    const/16 v8, 0x3a

    .line 23
    .line 24
    if-ne v1, v8, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v8, 0x2

    .line 31
    if-ge v1, v8, :cond_0

    .line 32
    .line 33
    const-string v1, "Bad "

    .line 34
    .line 35
    invoke-static {v1, p2, v7, p1, v6}, Landroid/accessibilityservice/c;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, ": must be at least two characters"

    .line 40
    .line 41
    invoke-static {p1, p0, p2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    aput-object p0, p3, v0

    .line 46
    .line 47
    return-object v5

    .line 48
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1, v0, v0}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-static {v3, p2, v7, p1, v6}, Landroid/accessibilityservice/c;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    aput-object p0, p3, v0

    .line 76
    .line 77
    return-object v5

    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_2
    invoke-static {p1, v4, v0}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    const-string/jumbo v4, "system"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_3

    .line 97
    .line 98
    invoke-static {v3, p2, v7, p1, v6}, Landroid/accessibilityservice/c;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    aput-object p0, p3, v0

    .line 116
    .line 117
    return-object v5

    .line 118
    :cond_3
    return-object p1
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    and-int/lit8 p3, p3, 0x8

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    const-string/jumbo p3, "system"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-nez p3, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move-object p0, p1

    .line 17
    :cond_0
    return-object p0

    .line 18
    :cond_1
    if-eqz p4, :cond_4

    .line 19
    .line 20
    array-length p3, p4

    .line 21
    add-int/lit8 p3, p3, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz p3, :cond_4

    .line 24
    .line 25
    aget-object v0, p4, p3

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    add-int/lit8 p3, p3, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    :goto_1
    return-object p0

    .line 50
    :cond_4
    if-eqz p2, :cond_6

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-gtz p3, :cond_5

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    const-string/jumbo p1, "process"

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p2, p1, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_6
    :goto_2
    return-object p1
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-gtz p1, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_1
    const-string/jumbo p1, "taskAffinity"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p2, p1, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V
    .locals 3

    .line 1
    const-string v0, "PackageParser"

    .line 2
    .line 3
    const-string v1, "Unable to delete cache file: "

    .line 4
    .line 5
    iget-object v2, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Ljava/io/File;

    .line 15
    .line 16
    iget-object v2, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {p2, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageParser;->toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B

    .line 49
    .line 50
    .line 51
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    :try_start_1
    new-instance p3, Ljava/io/FileOutputStream;

    .line 56
    .line 57
    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 58
    .line 59
    .line 60
    :try_start_2
    invoke-virtual {p3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    :catchall_1
    move-exception v1

    .line 70
    :try_start_5
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_2
    move-exception p3

    .line 75
    :try_start_6
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 79
    :catch_0
    move-exception p1

    .line 80
    :try_start_7
    const-string p3, "Error writing cache entry."

    .line 81
    .line 82
    invoke-static {v0, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_3
    move-exception p1

    .line 90
    const-string p2, "Error saving package cache."

    .line 91
    .line 92
    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void
.end method

.method private checkOverlayRequiredSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    return v1

    .line 31
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    return v1

    .line 45
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "Disabling overlay - incomplete property :\'"

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, "="

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, "\' - require both requiredSystemPropertyName AND requiredSystemPropertyValue to be specified."

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string p2, "PackageParser"

    .line 73
    .line 74
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return v2
.end method

.method private static checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const p1, 0x402000

    .line 16
    .line 17
    .line 18
    and-int/2addr p0, p1

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public static closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;I)V

    .line 2
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 4
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 5
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 6
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "AndroidManifest.xml"

    const-string v4, "Static shared libs must use v2 signature scheme "

    const-string v5, "No APK Signature Scheme v2 signature in ephemeral package "

    const-string v6, "Failed to collect certificates from "

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, -0x67

    const-wide/32 v9, 0x40000

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_0
    const-string/jumbo v0, "verifyV2"

    .line 8
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    invoke-static {v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v13
    :try_end_0
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-static {v13}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v0
    :try_end_1
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_1
    move-exception v0

    .line 12
    :try_start_2
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " using APK Signature Scheme v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    move-object v13, v12

    :goto_0
    and-int/lit16 v14, v2, 0x800

    if-nez v14, :cond_14

    .line 13
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isStaticSharedLibrary()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_13

    .line 14
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    move v4, v11

    move-object v0, v12

    :goto_1
    const/16 v5, -0x68

    if-eqz v4, :cond_2

    .line 15
    iget-object v14, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    if-nez v14, :cond_0

    .line 16
    iput-object v13, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 17
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 18
    new-instance v0, Landroid/util/ArraySet;

    array-length v14, v13

    invoke-direct {v0, v14}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    move v0, v11

    .line 19
    :goto_2
    array-length v14, v13

    if-ge v0, v14, :cond_2

    .line 20
    aget-object v14, v13, v0

    .line 21
    aget-object v14, v14, v11

    .line 22
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    invoke-virtual {v14}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 23
    :cond_0
    iget-object v13, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v13, v0}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 24
    :cond_1
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v1, " has mismatched certificates"

    .line 25
    invoke-static {v7, v1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-direct {v0, v5, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    :goto_3
    :try_start_3
    const-string/jumbo v0, "strictJarFileCtor"

    .line 27
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    and-int/lit8 v0, v2, 0x40

    if-nez v0, :cond_3

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    move v2, v11

    :goto_4
    if-eqz v7, :cond_5

    const-string v13, "/system/preloadapp"

    .line 28
    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "/system/vital-app"

    .line 29
    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "/oem/vital-app"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_4
    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    move v13, v11

    .line 30
    :goto_5
    new-instance v14, Landroid/util/jar/StrictJarFile;

    xor-int/lit8 v15, v4, 0x1

    if-eqz v13, :cond_6

    move v2, v11

    :cond_6
    invoke-direct {v14, v7, v15, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 31
    :try_start_4
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    invoke-virtual {v14, v3}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v12, "Package "

    if-eqz v2, :cond_12

    if-eqz v4, :cond_7

    .line 33
    invoke-static {v14}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    return-void

    :cond_7
    :try_start_5
    const-string/jumbo v4, "verifyV1"

    .line 34
    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_b

    .line 37
    invoke-virtual {v14}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 38
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 40
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_6

    .line 41
    :cond_8
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v13, "META-INF/"

    .line 42
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_6

    .line 43
    :cond_9
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_6

    .line 44
    :cond_a
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    if-eqz v0, :cond_10

    .line 45
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 46
    invoke-static {v14, v2}, Landroid/content/pm/PackageParser;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 47
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 48
    invoke-static {v3}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 49
    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    if-nez v9, :cond_d

    .line 50
    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 51
    iput-object v4, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 52
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    move v2, v11

    .line 53
    :goto_8
    array-length v4, v3

    if-ge v2, v4, :cond_c

    .line 54
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    aget-object v9, v3, v2

    aget-object v9, v9, v11

    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 55
    :cond_d
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_7

    .line 56
    :cond_e
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has mismatched certificates at entry "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 58
    :cond_f
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no certificates at entry "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_10
    move-object/from16 v2, p1

    .line 60
    invoke-static {v1, v4, v14, v2}, Landroid/content/pm/PackageParserExUtils;->collectNonSystemAppCertificates(Landroid/content/pm/PackageParser$Package;Ljava/util/List;Landroid/util/jar/StrictJarFile;Ljava/io/File;)V

    :cond_11
    const-wide/32 v0, 0x40000

    .line 61
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 62
    invoke-static {v14}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    return-void

    .line 63
    :cond_12
    :try_start_6
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has no manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x65

    invoke-direct {v0, v2, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    :goto_9
    move-object v12, v14

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v12, v14

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    .line 64
    :goto_a
    :try_start_7
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    move-exception v0

    .line 65
    :goto_b
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x69

    invoke-direct {v1, v3, v2, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_c
    move-object v14, v12

    .line 66
    :goto_d
    invoke-static {v14}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    throw v0

    .line 67
    :cond_13
    :try_start_8
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 68
    :cond_14
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    const-wide/32 v9, 0x40000

    .line 69
    :goto_e
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 5
    .line 6
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 7
    .line 8
    const-string v0, "collectCertificates"

    .line 9
    .line 10
    const-wide/32 v1, 0x40000

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 36
    .line 37
    array-length v3, v3

    .line 38
    if-ge v0, v3, :cond_0

    .line 39
    .line 40
    new-instance v3, Ljava/io/File;

    .line 41
    .line 42
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 43
    .line 44
    aget-object v4, v4, v0

    .line 45
    .line 46
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v3, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public static computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, ")"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    if-gt p0, p2, :cond_0

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const-string p1, "Requires newer sdk version #"

    .line 11
    .line 12
    const-string p3, " (current version is #"

    .line 13
    .line 14
    invoke-static {p1, p0, p3, p2, v1}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    aput-object p0, p4, v2

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    const/16 p0, 0x2710

    .line 28
    .line 29
    return p0

    .line 30
    :cond_2
    array-length p0, p3

    .line 31
    const-string p2, "Requires development platform "

    .line 32
    .line 33
    if-lez p0, :cond_3

    .line 34
    .line 35
    const-string p0, " (current platform is any of "

    .line 36
    .line 37
    invoke-static {p2, p1, p0}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1, v1}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    aput-object p0, p4, v2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const-string p0, " but this is a release platform."

    .line 53
    .line 54
    invoke-static {p2, p1, p0}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    aput-object p0, p4, v2

    .line 59
    .line 60
    :goto_0
    return v0
.end method

.method public static computeTargetSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return p0

    .line 4
    :cond_0
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    const/16 p0, 0x2710

    .line 11
    .line 12
    return p0

    .line 13
    :cond_1
    array-length p0, p3

    .line 14
    const-string p2, "Requires development platform "

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-lez p0, :cond_2

    .line 18
    .line 19
    const-string p0, " (current platform is any of "

    .line 20
    .line 21
    invoke-static {p2, p1, p0}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, ")"

    .line 30
    .line 31
    invoke-static {p0, p1, p2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    aput-object p0, p4, v0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string p0, " but this is a release platform."

    .line 39
    .line 40
    invoke-static {p2, p1, p0}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    aput-object p0, p4, v0

    .line 45
    .line 46
    :goto_0
    const/4 p0, -0x1

    .line 47
    return p0
.end method

.method public static convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v2, Landroid/content/pm/Signature;

    .line 9
    .line 10
    aget-object v3, p0, v1

    .line 11
    .line 12
    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    .line 13
    .line 14
    .line 15
    aput-object v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object v0
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p4, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget p4, p2, Landroid/content/pm/PackageUserState;->enabled:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p4, :cond_2

    .line 9
    .line 10
    if-ne p4, v0, :cond_1

    .line 11
    .line 12
    move p4, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move p4, v1

    .line 15
    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 18
    .line 19
    if-eq v2, p4, :cond_2

    .line 20
    .line 21
    return v0

    .line 22
    :cond_2
    iget-object p4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    iget v2, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 25
    .line 26
    const/high16 v3, 0x40000000    # 2.0f

    .line 27
    .line 28
    and-int/2addr v2, v3

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    move v2, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    move v2, v1

    .line 34
    :goto_1
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 35
    .line 36
    if-eq v3, v2, :cond_4

    .line 37
    .line 38
    return v0

    .line 39
    :cond_4
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    .line 40
    .line 41
    if-eqz v2, :cond_c

    .line 42
    .line 43
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 44
    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_5
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 49
    .line 50
    if-eqz v2, :cond_6

    .line 51
    .line 52
    return v0

    .line 53
    :cond_6
    iget-boolean p2, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 54
    .line 55
    invoke-virtual {p4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    if-eq p2, p4, :cond_7

    .line 60
    .line 61
    return v0

    .line 62
    :cond_7
    and-int/lit16 p2, p0, 0x80

    .line 63
    .line 64
    if-eqz p2, :cond_9

    .line 65
    .line 66
    if-nez p3, :cond_8

    .line 67
    .line 68
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 69
    .line 70
    if-eqz p2, :cond_9

    .line 71
    .line 72
    :cond_8
    return v0

    .line 73
    :cond_9
    and-int/lit16 p0, p0, 0x400

    .line 74
    .line 75
    if-eqz p0, :cond_a

    .line 76
    .line 77
    iget-object p0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 78
    .line 79
    if-eqz p0, :cond_a

    .line 80
    .line 81
    return v0

    .line 82
    :cond_a
    iget-object p0, p1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz p0, :cond_b

    .line 85
    .line 86
    return v0

    .line 87
    :cond_b
    return v1

    .line 88
    :cond_c
    :goto_2
    return v0
.end method

.method public static fromCacheEntryStatic([B)Landroid/content/pm/PackageParser$Package;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, p0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;-><init>(Landroid/os/Parcel;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->startAndInstall()V

    .line 19
    .line 20
    .line 21
    new-instance p0, Landroid/content/pm/PackageParser$Package;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Landroid/os/Parcel;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    .line 28
    .line 29
    sget-object v0, Landroid/content/pm/PackageParser;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 32
    .line 33
    .line 34
    return-object p0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 8
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 10
    iget-object p0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object p3, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p3, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object p0

    .line 5
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 6
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 7
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 14
    :cond_0
    invoke-static {p1, p2, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 15
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 16
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 17
    iget-boolean p0, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz p0, :cond_2

    .line 18
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p3, 0x200000

    or-int/2addr p0, p3

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 19
    :cond_2
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const p3, -0x200001

    and-int/2addr p0, p3

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 20
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p1, p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 4
    :cond_2
    iget-object p3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p3, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 5
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    .line 6
    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 7
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    and-int/lit16 p3, p1, 0x80

    if-eqz p3, :cond_4

    .line 8
    iget-object p3, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object p3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :cond_4
    and-int/lit16 p3, p1, 0x400

    if-eqz p3, :cond_5

    .line 9
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 10
    :cond_5
    iget-boolean p0, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz p0, :cond_6

    .line 11
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p3, 0x200000

    or-int/2addr p0, p3

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 12
    :cond_6
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const p3, -0x200001

    and-int/2addr p0, p3

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 13
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    and-int/lit16 p1, p1, 0x80

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    new-instance p1, Landroid/content/pm/InstrumentationInfo;

    .line 13
    .line 14
    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 20
    .line 21
    iput-object p0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 22
    .line 23
    return-object p1
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    invoke-static/range {v0 .. v9}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2, p8, v0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 4
    :cond_0
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 7
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 8
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 9
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 10
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 12
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 13
    invoke-static {p0, p2, p8, p9}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    iget v2, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v2, v0, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 15
    iget-boolean v2, p0, Landroid/content/pm/PackageParser$Package;->isStub:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 16
    iget-boolean v2, p0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 17
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    .line 18
    :cond_1
    iget-boolean v1, p0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 19
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 22
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 23
    iget-boolean v1, p0, Landroid/content/pm/PackageParser$Package;->mIsStaticOverlay:Z

    if-eqz v1, :cond_3

    .line 24
    iget v1, v0, Landroid/content/pm/PackageInfo;->overlayFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/PackageInfo;->overlayFlags:I

    .line 25
    :cond_3
    iget-boolean v1, p0, Landroid/content/pm/PackageParser$Package;->mTrustedOverlay:Z

    if-eqz v1, :cond_4

    .line 26
    iget v1, v0, Landroid/content/pm/PackageInfo;->overlayFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/content/pm/PackageInfo;->overlayFlags:I

    .line 27
    :cond_4
    iput-wide p3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 28
    iput-wide p5, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    and-int/lit16 p3, p2, 0x100

    if-eqz p3, :cond_5

    .line 29
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_5
    and-int/lit16 p1, p2, 0x4000

    const/4 p3, 0x0

    if-eqz p1, :cond_b

    .line 30
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_6
    move p1, p3

    :goto_0
    if-lez p1, :cond_7

    .line 31
    new-array p1, p1, [Landroid/content/pm/ConfigurationInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 32
    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    :cond_7
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_1

    :cond_8
    move p1, p3

    :goto_1
    if-lez p1, :cond_9

    .line 34
    new-array p1, p1, [Landroid/content/pm/FeatureInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 35
    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    :cond_9
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_2

    :cond_a
    move p1, p3

    :goto_2
    if-lez p1, :cond_b

    .line 37
    new-array p1, p1, [Landroid/content/pm/FeatureGroupInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 38
    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_b
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_e

    .line 39
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 40
    new-array p4, p1, [Landroid/content/pm/ActivityInfo;

    move p5, p3

    move p6, p5

    :goto_3
    if-ge p5, p1, :cond_d

    .line 41
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 42
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p8, v2, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v2, p6, 0x1

    .line 43
    invoke-static {v1, p2, p8, p9}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    aput-object v1, p4, p6

    move p6, v2

    :cond_c
    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    .line 44
    :cond_d
    invoke-static {p4, p6}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/ActivityInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_e
    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_11

    .line 45
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_11

    .line 46
    new-array p4, p1, [Landroid/content/pm/ActivityInfo;

    move p5, p3

    move p6, p5

    :goto_4
    if-ge p5, p1, :cond_10

    .line 47
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 48
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p8, v2, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v2, p6, 0x1

    .line 49
    invoke-static {v1, p2, p8, p9}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    aput-object v1, p4, p6

    move p6, v2

    :cond_f
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    .line 50
    :cond_10
    invoke-static {p4, p6}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/ActivityInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_11
    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_14

    .line 51
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_14

    .line 52
    new-array p4, p1, [Landroid/content/pm/ServiceInfo;

    move p5, p3

    move p6, p5

    :goto_5
    if-ge p5, p1, :cond_13

    .line 53
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    .line 54
    iget-object v2, v1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p8, v2, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v2, p6, 0x1

    .line 55
    invoke-static {v1, p2, p8, p9}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    aput-object v1, p4, p6

    move p6, v2

    :cond_12
    add-int/lit8 p5, p5, 0x1

    goto :goto_5

    .line 56
    :cond_13
    invoke-static {p4, p6}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/ServiceInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_14
    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_17

    .line 57
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_17

    .line 58
    new-array p4, p1, [Landroid/content/pm/ProviderInfo;

    move p5, p3

    move p6, p5

    :goto_6
    if-ge p5, p1, :cond_16

    .line 59
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    .line 60
    iget-object v2, v1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {p8, v2, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v2, p6, 0x1

    .line 61
    invoke-static {v1, p2, p8, p9}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    aput-object v1, p4, p6

    move p6, v2

    :cond_15
    add-int/lit8 p5, p5, 0x1

    goto :goto_6

    .line 62
    :cond_16
    invoke-static {p4, p6}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/ProviderInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_17
    and-int/lit8 p1, p2, 0x10

    if-eqz p1, :cond_18

    .line 63
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_18

    .line 64
    new-array p4, p1, [Landroid/content/pm/InstrumentationInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    move p4, p3

    :goto_7
    if-ge p4, p1, :cond_18

    .line 65
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Instrumentation;

    .line 67
    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    :cond_18
    and-int/lit16 p1, p2, 0x1000

    if-eqz p1, :cond_1b

    .line 68
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_19

    .line 69
    new-array p4, p1, [Landroid/content/pm/PermissionInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move p4, p3

    :goto_8
    if-ge p4, p1, :cond_19

    .line 70
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Permission;

    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_8

    .line 71
    :cond_19
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1b

    .line 72
    new-array p4, p1, [Ljava/lang/String;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 73
    new-array p4, p1, [I

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move p4, p3

    :goto_9
    if-ge p4, p1, :cond_1b

    .line 74
    iget-object p5, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 75
    iget-object p6, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object p5, p6, p4

    .line 76
    iget-object p6, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget p8, p6, p4

    or-int/lit8 p8, p8, 0x1

    aput p8, p6, p4

    if-eqz p7, :cond_1a

    .line 77
    invoke-interface {p7, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1a

    .line 78
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget p6, p5, p4

    or-int/lit8 p6, p6, 0x2

    aput p6, p5, p4

    :cond_1a
    add-int/lit8 p4, p4, 0x1

    goto :goto_9

    :cond_1b
    and-int/lit8 p1, p2, 0x40

    if-eqz p1, :cond_1d

    .line 79
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_1c

    array-length p1, p0

    goto :goto_a

    :cond_1c
    move p1, p3

    :goto_a
    if-lez p1, :cond_1d

    .line 80
    new-array p2, p1, [Landroid/content/pm/Signature;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 81
    invoke-static {p0, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    return-object v0

    :cond_1e
    :goto_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    and-int/lit16 p1, p1, 0x80

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    new-instance p1, Landroid/content/pm/PermissionGroupInfo;

    .line 13
    .line 14
    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 20
    .line 21
    iput-object p0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 22
    .line 23
    return-object p1
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    and-int/lit16 p1, p1, 0x80

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    new-instance p1, Landroid/content/pm/PermissionInfo;

    .line 13
    .line 14
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 20
    .line 21
    iput-object p0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 22
    .line 23
    return-object p1
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 6
    .line 7
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 17
    .line 18
    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    and-int/lit16 v1, p1, 0x800

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 31
    .line 32
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    :cond_2
    iget-object p3, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 37
    .line 38
    iget-object p3, p3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    invoke-static {p3, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_3
    new-instance v1, Landroid/content/pm/ProviderInfo;

    .line 47
    .line 48
    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 54
    .line 55
    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 56
    .line 57
    and-int/lit16 v2, p1, 0x800

    .line 58
    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 62
    .line 63
    :cond_4
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 64
    .line 65
    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    iput-object p0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 70
    .line 71
    return-object v1
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 6
    .line 7
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 17
    .line 18
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object p3, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 27
    .line 28
    iget-object p3, p3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    invoke-static {p3, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    .line 37
    .line 38
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 44
    .line 45
    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 46
    .line 47
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 48
    .line 49
    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iput-object p0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    return-object v0
.end method

.method public static getActivityConfigChanges(II)I
    .locals 0

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static getApkSigningVersion(Landroid/content/pm/PackageParser$Package;)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->hasSignature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x2d

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser;->fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p2, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {p2, v2}, Landroid/content/pm/PackageParser$Callback;->getOverlayApks(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    array-length v2, p2

    .line 50
    if-lez v2, :cond_3

    .line 51
    .line 52
    array-length v2, p2

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_0
    if-ge v3, v2, :cond_3

    .line 55
    .line 56
    aget-object v4, p2, v3

    .line 57
    .line 58
    new-instance v5, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v5, v0}, Landroid/content/pm/PackageParser;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    .line 64
    .line 65
    .line 66
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    return-object p1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    const-string p2, "PackageParser"

    .line 76
    .line 77
    const-string v2, "Error reading package cache: "

    .line 78
    .line 79
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 83
    .line 84
    .line 85
    return-object v1
.end method

.method private static hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_7

    .line 3
    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_5

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    move v2, v0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_7

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 21
    .line 22
    iget-object v3, v3, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    goto :goto_4

    .line 27
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    move v5, v0

    .line 32
    :goto_1
    if-ge v5, v4, :cond_6

    .line 33
    .line 34
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 39
    .line 40
    const-string v7, "android.intent.action.VIEW"

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-nez v8, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const-string/jumbo v7, "http"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-nez v7, :cond_5

    .line 64
    .line 65
    const-string/jumbo v7, "https"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    :goto_3
    const/4 p0, 0x1

    .line 79
    return p0

    .line 80
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_7
    :goto_5
    return v0
.end method

.method public static final isApkFile(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isApkPath(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, ".apk"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isAvailable(Landroid/content/pm/PackageUserState;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method private static isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-wide v1, p0, Landroid/system/StructStat;->st_mtime:J

    .line 19
    .line 20
    iget-wide p0, p1, Landroid/system/StructStat;->st_mtime:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    cmp-long p0, v1, p0

    .line 23
    .line 24
    if-gez p0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    :cond_0
    return v0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    .line 30
    .line 31
    sget v1, Landroid/system/OsConstants;->ENOENT:I

    .line 32
    .line 33
    if-eq p1, v1, :cond_1

    .line 34
    .line 35
    const-string p1, "Error while stating package cache : "

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    return v0
.end method

.method private isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z
    .locals 1

    .line 1
    const-string v0, "android.intent.category.BROWSABLE"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "android.intent.action.SEND"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "android.intent.action.SENDTO"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    :goto_1
    return p1
.end method

.method private static loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x4

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 13
    .line 14
    const-string p2, "Invalid package file: "

    .line 15
    .line 16
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/16 p2, -0x64

    .line 21
    .line 22
    invoke-direct {p0, p2, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 34
    .line 35
    const-string p2, "Failed adding asset path: "

    .line 36
    .line 37
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/16 p2, -0x65

    .line 42
    .line 43
    invoke-direct {p0, p2, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 5

    .line 1
    const-string v0, "Failed reading "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/content/pm/PackageParser;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception v2

    .line 22
    goto :goto_0

    .line 23
    :catch_1
    move-exception v2

    .line 24
    :goto_0
    :try_start_1
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " in "

    .line 39
    .line 40
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/16 p1, -0x66

    .line 51
    .line 52
    invoke-direct {v3, p1, p0, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method private static newConfiguredAssetManager()Landroid/content/res/AssetManager;
    .locals 20

    .line 1
    new-instance v19, Landroid/content/res/AssetManager;

    .line 2
    .line 3
    move-object/from16 v0, v19

    .line 4
    .line 5
    invoke-direct/range {v19 .. v19}, Landroid/content/res/AssetManager;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, 0x0

    .line 20
    const/4 v13, 0x0

    .line 21
    const/4 v14, 0x0

    .line 22
    const/4 v15, 0x0

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    const/16 v17, 0x0

    .line 26
    .line 27
    sget v18, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 28
    .line 29
    invoke-virtual/range {v0 .. v18}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 30
    .line 31
    .line 32
    return-object v19
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 23

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move/from16 v0, p4

    .line 10
    .line 11
    move-object/from16 v3, p5

    .line 12
    .line 13
    move-object/from16 v1, p6

    .line 14
    .line 15
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    .line 16
    .line 17
    invoke-virtual {v5, v4, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 22
    .line 23
    if-nez v8, :cond_0

    .line 24
    .line 25
    new-instance v15, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 26
    .line 27
    const/4 v11, 0x3

    .line 28
    const/4 v12, 0x1

    .line 29
    const/4 v13, 0x2

    .line 30
    const/16 v14, 0x2c

    .line 31
    .line 32
    const/16 v16, 0x17

    .line 33
    .line 34
    const/16 v17, 0x1e

    .line 35
    .line 36
    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 37
    .line 38
    const/16 v18, 0x7

    .line 39
    .line 40
    const/16 v19, 0x11

    .line 41
    .line 42
    const/16 v20, 0x5

    .line 43
    .line 44
    move-object v8, v15

    .line 45
    move-object/from16 v9, p1

    .line 46
    .line 47
    move-object/from16 v21, v10

    .line 48
    .line 49
    move-object/from16 v10, p5

    .line 50
    .line 51
    move-object/from16 v22, v15

    .line 52
    .line 53
    move/from16 v15, v16

    .line 54
    .line 55
    move/from16 v16, v17

    .line 56
    .line 57
    move-object/from16 v17, v21

    .line 58
    .line 59
    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    .line 60
    .line 61
    .line 62
    move-object/from16 v8, v22

    .line 63
    .line 64
    iput-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 65
    .line 66
    :cond_0
    iget-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 67
    .line 68
    if-eqz p7, :cond_1

    .line 69
    .line 70
    const-string v9, "<receiver>"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-string v9, "<activity>"

    .line 74
    .line 75
    :goto_0
    iput-object v9, v8, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v2, v8, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 78
    .line 79
    iput v0, v8, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 80
    .line 81
    new-instance v8, Landroid/content/pm/PackageParser$Activity;

    .line 82
    .line 83
    iget-object v1, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 84
    .line 85
    new-instance v9, Landroid/content/pm/ActivityInfo;

    .line 86
    .line 87
    invoke-direct {v9}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-direct {v8, v1, v9}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 91
    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    aget-object v1, v3, v9

    .line 95
    .line 96
    const/4 v10, 0x0

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    .line 101
    .line 102
    return-object v10

    .line 103
    :cond_2
    const/4 v1, 0x6

    .line 104
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-eqz v11, :cond_3

    .line 109
    .line 110
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 111
    .line 112
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    iput-boolean v1, v12, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 117
    .line 118
    :cond_3
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 119
    .line 120
    invoke-virtual {v2, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    iput v12, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 125
    .line 126
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 127
    .line 128
    iget-object v12, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 129
    .line 130
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 131
    .line 132
    const/16 v13, 0x1a

    .line 133
    .line 134
    invoke-virtual {v2, v13, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    iput v12, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 139
    .line 140
    const/16 v1, 0x1b

    .line 141
    .line 142
    const/16 v12, 0x400

    .line 143
    .line 144
    invoke-virtual {v2, v1, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const-string v13, "PackageParser"

    .line 149
    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    iget-object v14, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 153
    .line 154
    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v14, v1, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    aget-object v15, v3, v9

    .line 161
    .line 162
    if-nez v15, :cond_4

    .line 163
    .line 164
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 165
    .line 166
    iput-object v14, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v15, "Activity "

    .line 172
    .line 173
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v15, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 177
    .line 178
    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v15, " specified invalid parentActivityName "

    .line 184
    .line 185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    aput-object v10, v3, v9

    .line 199
    .line 200
    :cond_5
    :goto_1
    const/4 v14, 0x4

    .line 201
    invoke-virtual {v2, v14, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    if-nez v1, :cond_6

    .line 206
    .line 207
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 208
    .line 209
    iget-object v15, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 210
    .line 211
    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 212
    .line 213
    iput-object v15, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_6
    iget-object v15, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 219
    .line 220
    .line 221
    move-result v16

    .line 222
    if-lez v16, :cond_7

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    goto :goto_2

    .line 229
    :cond_7
    move-object v1, v10

    .line 230
    :goto_2
    iput-object v1, v15, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 231
    .line 232
    :goto_3
    const/16 v1, 0x8

    .line 233
    .line 234
    invoke-virtual {v2, v1, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    iget-object v10, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 239
    .line 240
    iget-object v12, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 241
    .line 242
    iget-object v1, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 243
    .line 244
    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 245
    .line 246
    invoke-static {v1, v12, v15, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iput-object v1, v10, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 251
    .line 252
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 253
    .line 254
    const/16 v10, 0x30

    .line 255
    .line 256
    invoke-virtual {v2, v10, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    iput-object v10, v1, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 261
    .line 262
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 263
    .line 264
    iput v9, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 265
    .line 266
    const/16 v1, 0x9

    .line 267
    .line 268
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    const/4 v10, 0x1

    .line 273
    if-eqz v1, :cond_8

    .line 274
    .line 275
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 276
    .line 277
    iget v12, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 278
    .line 279
    or-int/2addr v12, v10

    .line 280
    iput v12, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 281
    .line 282
    :cond_8
    const/16 v1, 0xa

    .line 283
    .line 284
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    const/4 v12, 0x2

    .line 289
    if-eqz v1, :cond_9

    .line 290
    .line 291
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 292
    .line 293
    iget v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 294
    .line 295
    or-int/2addr v15, v12

    .line 296
    iput v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 297
    .line 298
    :cond_9
    const/16 v1, 0xb

    .line 299
    .line 300
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_a

    .line 305
    .line 306
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 307
    .line 308
    iget v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 309
    .line 310
    or-int/2addr v15, v14

    .line 311
    iput v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 312
    .line 313
    :cond_a
    const/16 v1, 0x15

    .line 314
    .line 315
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_b

    .line 320
    .line 321
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 322
    .line 323
    iget v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 324
    .line 325
    or-int/lit16 v15, v15, 0x80

    .line 326
    .line 327
    iput v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 328
    .line 329
    :cond_b
    const/16 v1, 0x12

    .line 330
    .line 331
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-eqz v1, :cond_c

    .line 336
    .line 337
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 338
    .line 339
    iget v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 340
    .line 341
    const/16 v17, 0x8

    .line 342
    .line 343
    or-int/lit8 v15, v15, 0x8

    .line 344
    .line 345
    iput v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 346
    .line 347
    :cond_c
    const/16 v1, 0xc

    .line 348
    .line 349
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    const/16 v15, 0x10

    .line 354
    .line 355
    if-eqz v1, :cond_d

    .line 356
    .line 357
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 358
    .line 359
    iget v12, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 360
    .line 361
    or-int/2addr v12, v15

    .line 362
    iput v12, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 363
    .line 364
    :cond_d
    const/16 v1, 0xd

    .line 365
    .line 366
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    const/16 v12, 0x20

    .line 371
    .line 372
    if-eqz v1, :cond_e

    .line 373
    .line 374
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 375
    .line 376
    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 377
    .line 378
    or-int/2addr v10, v12

    .line 379
    iput v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 380
    .line 381
    :cond_e
    iget-object v1, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 382
    .line 383
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 384
    .line 385
    and-int/2addr v1, v12

    .line 386
    if-eqz v1, :cond_f

    .line 387
    .line 388
    const/4 v1, 0x1

    .line 389
    goto :goto_4

    .line 390
    :cond_f
    move v1, v9

    .line 391
    :goto_4
    const/16 v10, 0x13

    .line 392
    .line 393
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-eqz v1, :cond_10

    .line 398
    .line 399
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 400
    .line 401
    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 402
    .line 403
    or-int/lit8 v10, v10, 0x40

    .line 404
    .line 405
    iput v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 406
    .line 407
    :cond_10
    const/16 v1, 0x16

    .line 408
    .line 409
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_11

    .line 414
    .line 415
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 416
    .line 417
    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 418
    .line 419
    or-int/lit16 v10, v10, 0x100

    .line 420
    .line 421
    iput v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 422
    .line 423
    :cond_11
    const/16 v1, 0x1d

    .line 424
    .line 425
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-nez v1, :cond_12

    .line 430
    .line 431
    const/16 v1, 0x27

    .line 432
    .line 433
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_13

    .line 438
    .line 439
    :cond_12
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 440
    .line 441
    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 442
    .line 443
    const/16 v14, 0x400

    .line 444
    .line 445
    or-int/2addr v10, v14

    .line 446
    iput v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 447
    .line 448
    :cond_13
    const/16 v1, 0x18

    .line 449
    .line 450
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-eqz v1, :cond_14

    .line 455
    .line 456
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 457
    .line 458
    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 459
    .line 460
    or-int/lit16 v10, v10, 0x800

    .line 461
    .line 462
    iput v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 463
    .line 464
    :cond_14
    const/16 v1, 0x36

    .line 465
    .line 466
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-eqz v1, :cond_15

    .line 471
    .line 472
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 473
    .line 474
    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 475
    .line 476
    const/high16 v14, 0x20000000

    .line 477
    .line 478
    or-int/2addr v10, v14

    .line 479
    iput v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 480
    .line 481
    :cond_15
    const-string v10, " at "

    .line 482
    .line 483
    const-string v14, " "

    .line 484
    .line 485
    if-nez p7, :cond_1f

    .line 486
    .line 487
    const/16 v0, 0x19

    .line 488
    .line 489
    move/from16 v1, p8

    .line 490
    .line 491
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_16

    .line 496
    .line 497
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 498
    .line 499
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 500
    .line 501
    or-int/lit16 v1, v1, 0x200

    .line 502
    .line 503
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 504
    .line 505
    :cond_16
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 506
    .line 507
    const/16 v1, 0xe

    .line 508
    .line 509
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    iput v1, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 514
    .line 515
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 516
    .line 517
    const/16 v1, 0x21

    .line 518
    .line 519
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    iput v1, v0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 524
    .line 525
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 526
    .line 527
    const/16 v1, 0x22

    .line 528
    .line 529
    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    .line 530
    .line 531
    .line 532
    move-result v12

    .line 533
    invoke-virtual {v2, v1, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    iput v1, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 538
    .line 539
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 540
    .line 541
    invoke-virtual {v2, v15, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    const/16 v12, 0x2f

    .line 546
    .line 547
    invoke-virtual {v2, v12, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 548
    .line 549
    .line 550
    move-result v12

    .line 551
    invoke-static {v1, v12}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    iput v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 556
    .line 557
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 558
    .line 559
    const/16 v1, 0x14

    .line 560
    .line 561
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    iput v1, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 566
    .line 567
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 568
    .line 569
    const/16 v1, 0x20

    .line 570
    .line 571
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    iput v1, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 576
    .line 577
    const/16 v0, 0x1f

    .line 578
    .line 579
    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    if-eqz v0, :cond_17

    .line 584
    .line 585
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 586
    .line 587
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 588
    .line 589
    const/high16 v12, -0x80000000

    .line 590
    .line 591
    or-int/2addr v1, v12

    .line 592
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 593
    .line 594
    :cond_17
    const/16 v0, 0x23

    .line 595
    .line 596
    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-eqz v0, :cond_18

    .line 601
    .line 602
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 603
    .line 604
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 605
    .line 606
    or-int/lit16 v1, v1, 0x2000

    .line 607
    .line 608
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 609
    .line 610
    :cond_18
    const/16 v0, 0x24

    .line 611
    .line 612
    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    if-eqz v0, :cond_19

    .line 617
    .line 618
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 619
    .line 620
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 621
    .line 622
    or-int/lit16 v1, v1, 0x1000

    .line 623
    .line 624
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 625
    .line 626
    :cond_19
    const/16 v0, 0x25

    .line 627
    .line 628
    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 629
    .line 630
    .line 631
    move-result v0

    .line 632
    if-eqz v0, :cond_1a

    .line 633
    .line 634
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 635
    .line 636
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 637
    .line 638
    or-int/lit16 v1, v1, 0x4000

    .line 639
    .line 640
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 641
    .line 642
    :cond_1a
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 643
    .line 644
    const/16 v1, 0xf

    .line 645
    .line 646
    const/4 v12, -0x1

    .line 647
    invoke-virtual {v2, v1, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 648
    .line 649
    .line 650
    move-result v1

    .line 651
    iput v1, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 652
    .line 653
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 654
    .line 655
    invoke-direct {v7, v0, v2, v6}, Landroid/content/pm/PackageParser;->setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V

    .line 656
    .line 657
    .line 658
    const/16 v0, 0x29

    .line 659
    .line 660
    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    if-eqz v0, :cond_1b

    .line 665
    .line 666
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 667
    .line 668
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 669
    .line 670
    const/high16 v15, 0x400000

    .line 671
    .line 672
    or-int/2addr v1, v15

    .line 673
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 674
    .line 675
    :cond_1b
    const/16 v0, 0x35

    .line 676
    .line 677
    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    if-eqz v0, :cond_1c

    .line 682
    .line 683
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 684
    .line 685
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 686
    .line 687
    const/high16 v15, 0x40000

    .line 688
    .line 689
    or-int/2addr v1, v15

    .line 690
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 691
    .line 692
    :cond_1c
    const/16 v0, 0x32

    .line 693
    .line 694
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    if-eqz v1, :cond_1d

    .line 699
    .line 700
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getType(I)I

    .line 701
    .line 702
    .line 703
    move-result v1

    .line 704
    const/4 v15, 0x4

    .line 705
    if-ne v1, v15, :cond_1d

    .line 706
    .line 707
    const/4 v1, 0x0

    .line 708
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    invoke-static {v8, v0}, Landroid/content/pm/PackageParser$Activity;->access$200(Landroid/content/pm/PackageParser$Activity;F)V

    .line 713
    .line 714
    .line 715
    :cond_1d
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 716
    .line 717
    const/16 v1, 0x26

    .line 718
    .line 719
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    iput v1, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 724
    .line 725
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 726
    .line 727
    const/16 v1, 0x2a

    .line 728
    .line 729
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    iput-boolean v1, v0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 734
    .line 735
    iput-boolean v1, v0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    .line 736
    .line 737
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 738
    .line 739
    const/16 v1, 0x2b

    .line 740
    .line 741
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 746
    .line 747
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 748
    .line 749
    const/16 v1, 0x2e

    .line 750
    .line 751
    invoke-virtual {v2, v1, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 752
    .line 753
    .line 754
    move-result v1

    .line 755
    iput v1, v0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 756
    .line 757
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 758
    .line 759
    const/16 v1, 0x31

    .line 760
    .line 761
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    iput v1, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 766
    .line 767
    const/16 v0, 0x33

    .line 768
    .line 769
    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    if-eqz v0, :cond_1e

    .line 774
    .line 775
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 776
    .line 777
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 778
    .line 779
    const/high16 v12, 0x800000

    .line 780
    .line 781
    or-int/2addr v1, v12

    .line 782
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 783
    .line 784
    :cond_1e
    const/16 v0, 0x34

    .line 785
    .line 786
    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 787
    .line 788
    .line 789
    move-result v0

    .line 790
    if-eqz v0, :cond_21

    .line 791
    .line 792
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 793
    .line 794
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 795
    .line 796
    const/high16 v12, 0x1000000

    .line 797
    .line 798
    or-int/2addr v1, v12

    .line 799
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 800
    .line 801
    goto :goto_5

    .line 802
    :cond_1f
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 803
    .line 804
    iput v9, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 805
    .line 806
    iput v9, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 807
    .line 808
    const/16 v1, 0x1c

    .line 809
    .line 810
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 811
    .line 812
    .line 813
    move-result v1

    .line 814
    if-eqz v1, :cond_20

    .line 815
    .line 816
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 817
    .line 818
    iget v12, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 819
    .line 820
    const/high16 v15, 0x40000000    # 2.0f

    .line 821
    .line 822
    or-int/2addr v12, v15

    .line 823
    iput v12, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 824
    .line 825
    iget-boolean v1, v1, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 826
    .line 827
    if-eqz v1, :cond_20

    .line 828
    .line 829
    and-int/lit16 v0, v0, 0x80

    .line 830
    .line 831
    if-nez v0, :cond_20

    .line 832
    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    .line 834
    .line 835
    const-string v1, "Activity exported request ignored due to singleUser: "

    .line 836
    .line 837
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    iget-object v1, v8, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 841
    .line 842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 849
    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    .line 869
    .line 870
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 871
    .line 872
    iput-boolean v9, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 873
    .line 874
    const/4 v11, 0x1

    .line 875
    :cond_20
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 876
    .line 877
    const/16 v1, 0x2a

    .line 878
    .line 879
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    iput-boolean v1, v0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 884
    .line 885
    iput-boolean v1, v0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    .line 886
    .line 887
    :cond_21
    :goto_5
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 888
    .line 889
    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 890
    .line 891
    if-eqz v0, :cond_22

    .line 892
    .line 893
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 894
    .line 895
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 896
    .line 897
    or-int/lit16 v1, v1, 0x100

    .line 898
    .line 899
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 900
    .line 901
    :cond_22
    const/16 v0, 0x2d

    .line 902
    .line 903
    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    const/high16 v12, 0x100000

    .line 908
    .line 909
    if-eqz v0, :cond_23

    .line 910
    .line 911
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 912
    .line 913
    iget v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 914
    .line 915
    or-int/2addr v15, v12

    .line 916
    iput v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 917
    .line 918
    const/4 v1, 0x1

    .line 919
    iput-boolean v1, v6, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 920
    .line 921
    :cond_23
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 922
    .line 923
    .line 924
    if-eqz p7, :cond_24

    .line 925
    .line 926
    iget-object v1, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 927
    .line 928
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 929
    .line 930
    const/4 v15, 0x2

    .line 931
    and-int/2addr v1, v15

    .line 932
    if-eqz v1, :cond_25

    .line 933
    .line 934
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 935
    .line 936
    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 937
    .line 938
    iget-object v2, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 939
    .line 940
    if-ne v1, v2, :cond_25

    .line 941
    .line 942
    const-string v1, "Heavy-weight applications can not have receivers in main process"

    .line 943
    .line 944
    aput-object v1, v3, v9

    .line 945
    .line 946
    goto :goto_6

    .line 947
    :cond_24
    const/4 v15, 0x2

    .line 948
    :cond_25
    :goto_6
    aget-object v1, v3, v9

    .line 949
    .line 950
    if-eqz v1, :cond_26

    .line 951
    .line 952
    const/4 v1, 0x0

    .line 953
    return-object v1

    .line 954
    :cond_26
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 955
    .line 956
    .line 957
    move-result v2

    .line 958
    move/from16 v16, v0

    .line 959
    .line 960
    :goto_7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 961
    .line 962
    .line 963
    move-result v0

    .line 964
    const/4 v1, 0x1

    .line 965
    if-eq v0, v1, :cond_41

    .line 966
    .line 967
    const/4 v1, 0x3

    .line 968
    if-ne v0, v1, :cond_28

    .line 969
    .line 970
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 971
    .line 972
    .line 973
    move-result v9

    .line 974
    if-le v9, v2, :cond_27

    .line 975
    .line 976
    goto :goto_8

    .line 977
    :cond_27
    const/4 v1, 0x1

    .line 978
    goto/16 :goto_15

    .line 979
    .line 980
    :cond_28
    :goto_8
    if-eq v0, v1, :cond_40

    .line 981
    .line 982
    const/4 v9, 0x4

    .line 983
    if-ne v0, v9, :cond_29

    .line 984
    .line 985
    goto/16 :goto_11

    .line 986
    .line 987
    :cond_29
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    const-string/jumbo v1, "intent-filter"

    .line 992
    .line 993
    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 995
    .line 996
    .line 997
    move-result v0

    .line 998
    const/high16 v19, 0x200000

    .line 999
    .line 1000
    if-eqz v0, :cond_31

    .line 1001
    .line 1002
    new-instance v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1003
    .line 1004
    invoke-direct {v1, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 1005
    .line 1006
    .line 1007
    const/16 v20, 0x1

    .line 1008
    .line 1009
    const/16 v21, 0x1

    .line 1010
    .line 1011
    move-object/from16 v0, p0

    .line 1012
    .line 1013
    move-object/from16 p4, v1

    .line 1014
    .line 1015
    move-object/from16 v1, p2

    .line 1016
    .line 1017
    move/from16 v22, v2

    .line 1018
    .line 1019
    move-object/from16 v2, p3

    .line 1020
    .line 1021
    move-object v9, v3

    .line 1022
    move/from16 v3, v20

    .line 1023
    .line 1024
    move-object v15, v4

    .line 1025
    move/from16 v4, v21

    .line 1026
    .line 1027
    move-object/from16 v5, p4

    .line 1028
    .line 1029
    move-object/from16 v6, p5

    .line 1030
    .line 1031
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    .line 1032
    .line 1033
    .line 1034
    move-result v0

    .line 1035
    if-nez v0, :cond_2a

    .line 1036
    .line 1037
    const/4 v0, 0x0

    .line 1038
    return-object v0

    .line 1039
    :cond_2a
    invoke-virtual/range {p4 .. p4}, Landroid/content/IntentFilter;->countActions()I

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    if-nez v0, :cond_2b

    .line 1044
    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    const-string v1, "No actions in intent filter at "

    .line 1048
    .line 1049
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1053
    .line 1054
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v1

    .line 1064
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v0

    .line 1071
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    .line 1073
    .line 1074
    move-object/from16 v1, p4

    .line 1075
    .line 1076
    goto :goto_9

    .line 1077
    :cond_2b
    iget-object v0, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 1078
    .line 1079
    move-object/from16 v1, p4

    .line 1080
    .line 1081
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    :goto_9
    if-eqz v16, :cond_2c

    .line 1085
    .line 1086
    const/4 v0, 0x1

    .line 1087
    goto :goto_a

    .line 1088
    :cond_2c
    if-nez p7, :cond_2d

    .line 1089
    .line 1090
    invoke-direct {v7, v1}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v0

    .line 1094
    if-eqz v0, :cond_2d

    .line 1095
    .line 1096
    const/4 v0, 0x2

    .line 1097
    goto :goto_a

    .line 1098
    :cond_2d
    const/4 v0, 0x0

    .line 1099
    :goto_a
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v1}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    .line 1103
    .line 1104
    .line 1105
    move-result v0

    .line 1106
    if-eqz v0, :cond_2e

    .line 1107
    .line 1108
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 1109
    .line 1110
    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1111
    .line 1112
    or-int/2addr v2, v12

    .line 1113
    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1114
    .line 1115
    :cond_2e
    invoke-virtual {v1}, Landroid/content/IntentFilter;->isImplicitlyVisibleToInstantApp()Z

    .line 1116
    .line 1117
    .line 1118
    move-result v0

    .line 1119
    if-eqz v0, :cond_2f

    .line 1120
    .line 1121
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 1122
    .line 1123
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1124
    .line 1125
    or-int v1, v1, v19

    .line 1126
    .line 1127
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1128
    .line 1129
    :cond_2f
    move-object/from16 v0, p1

    .line 1130
    .line 1131
    :cond_30
    :goto_b
    move-object/from16 v2, p2

    .line 1132
    .line 1133
    goto/16 :goto_12

    .line 1134
    .line 1135
    :cond_31
    move/from16 v22, v2

    .line 1136
    .line 1137
    move-object v9, v3

    .line 1138
    move-object v15, v4

    .line 1139
    if-nez p7, :cond_38

    .line 1140
    .line 1141
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    const-string/jumbo v1, "preferred"

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1149
    .line 1150
    .line 1151
    move-result v0

    .line 1152
    if-eqz v0, :cond_38

    .line 1153
    .line 1154
    new-instance v6, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1155
    .line 1156
    invoke-direct {v6, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 1157
    .line 1158
    .line 1159
    const/4 v3, 0x0

    .line 1160
    const/4 v4, 0x0

    .line 1161
    move-object/from16 v0, p0

    .line 1162
    .line 1163
    move-object/from16 v1, p2

    .line 1164
    .line 1165
    move-object/from16 v2, p3

    .line 1166
    .line 1167
    move-object v5, v6

    .line 1168
    move-object/from16 p4, v6

    .line 1169
    .line 1170
    move-object/from16 v6, p5

    .line 1171
    .line 1172
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    .line 1173
    .line 1174
    .line 1175
    move-result v0

    .line 1176
    if-nez v0, :cond_32

    .line 1177
    .line 1178
    const/4 v0, 0x0

    .line 1179
    return-object v0

    .line 1180
    :cond_32
    invoke-virtual/range {p4 .. p4}, Landroid/content/IntentFilter;->countActions()I

    .line 1181
    .line 1182
    .line 1183
    move-result v0

    .line 1184
    if-nez v0, :cond_33

    .line 1185
    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    const-string v1, "No actions in preferred at "

    .line 1189
    .line 1190
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1194
    .line 1195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    .line 1200
    .line 1201
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v1

    .line 1205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    .line 1214
    .line 1215
    move-object/from16 v0, p1

    .line 1216
    .line 1217
    move-object/from16 v2, p4

    .line 1218
    .line 1219
    goto :goto_c

    .line 1220
    :cond_33
    move-object/from16 v0, p1

    .line 1221
    .line 1222
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 1223
    .line 1224
    if-nez v1, :cond_34

    .line 1225
    .line 1226
    new-instance v1, Ljava/util/ArrayList;

    .line 1227
    .line 1228
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .line 1230
    .line 1231
    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 1232
    .line 1233
    :cond_34
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 1234
    .line 1235
    move-object/from16 v2, p4

    .line 1236
    .line 1237
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    .line 1239
    .line 1240
    :goto_c
    if-eqz v16, :cond_35

    .line 1241
    .line 1242
    const/4 v1, 0x1

    .line 1243
    goto :goto_d

    .line 1244
    :cond_35
    if-nez p7, :cond_36

    .line 1245
    .line 1246
    invoke-direct {v7, v2}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v1

    .line 1250
    if-eqz v1, :cond_36

    .line 1251
    .line 1252
    const/4 v1, 0x2

    .line 1253
    goto :goto_d

    .line 1254
    :cond_36
    const/4 v1, 0x0

    .line 1255
    :goto_d
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v2}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    .line 1259
    .line 1260
    .line 1261
    move-result v1

    .line 1262
    if-eqz v1, :cond_37

    .line 1263
    .line 1264
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 1265
    .line 1266
    iget v3, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1267
    .line 1268
    or-int/2addr v3, v12

    .line 1269
    iput v3, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1270
    .line 1271
    :cond_37
    invoke-virtual {v2}, Landroid/content/IntentFilter;->isImplicitlyVisibleToInstantApp()Z

    .line 1272
    .line 1273
    .line 1274
    move-result v1

    .line 1275
    if-eqz v1, :cond_30

    .line 1276
    .line 1277
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 1278
    .line 1279
    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1280
    .line 1281
    or-int v2, v2, v19

    .line 1282
    .line 1283
    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1284
    .line 1285
    goto/16 :goto_b

    .line 1286
    .line 1287
    :cond_38
    move-object/from16 v0, p1

    .line 1288
    .line 1289
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v1

    .line 1293
    const-string/jumbo v2, "meta-data"

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v1

    .line 1300
    if-eqz v1, :cond_3d

    .line 1301
    .line 1302
    iget-object v1, v8, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 1303
    .line 1304
    move-object/from16 v2, p2

    .line 1305
    .line 1306
    invoke-direct {v7, v2, v15, v1, v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v1

    .line 1310
    iput-object v1, v8, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 1311
    .line 1312
    if-nez v1, :cond_39

    .line 1313
    .line 1314
    const/4 v3, 0x0

    .line 1315
    return-object v3

    .line 1316
    :cond_39
    const/4 v3, 0x0

    .line 1317
    if-nez v16, :cond_3c

    .line 1318
    .line 1319
    const-string/jumbo v4, "instantapps.clients.allowed"

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1323
    .line 1324
    .line 1325
    move-result v1

    .line 1326
    if-eqz v1, :cond_3c

    .line 1327
    .line 1328
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 1329
    .line 1330
    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1331
    .line 1332
    or-int/2addr v4, v12

    .line 1333
    const v5, -0x200001

    .line 1334
    .line 1335
    .line 1336
    and-int/2addr v4, v5

    .line 1337
    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1338
    .line 1339
    const/4 v1, 0x1

    .line 1340
    iput-boolean v1, v0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 1341
    .line 1342
    iget-object v4, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 1343
    .line 1344
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1345
    .line 1346
    .line 1347
    move-result v4

    .line 1348
    sub-int/2addr v4, v1

    .line 1349
    :goto_e
    if-ltz v4, :cond_3a

    .line 1350
    .line 1351
    iget-object v5, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 1352
    .line 1353
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v5

    .line 1357
    check-cast v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1358
    .line 1359
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 1360
    .line 1361
    .line 1362
    add-int/lit8 v4, v4, -0x1

    .line 1363
    .line 1364
    goto :goto_e

    .line 1365
    :cond_3a
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 1366
    .line 1367
    if-eqz v4, :cond_3b

    .line 1368
    .line 1369
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1370
    .line 1371
    .line 1372
    move-result v4

    .line 1373
    sub-int/2addr v4, v1

    .line 1374
    :goto_f
    if-ltz v4, :cond_3b

    .line 1375
    .line 1376
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 1377
    .line 1378
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v5

    .line 1382
    check-cast v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1383
    .line 1384
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 1385
    .line 1386
    .line 1387
    add-int/lit8 v4, v4, -0x1

    .line 1388
    .line 1389
    goto :goto_f

    .line 1390
    :cond_3b
    move-object v6, v0

    .line 1391
    move/from16 v16, v1

    .line 1392
    .line 1393
    goto/16 :goto_14

    .line 1394
    .line 1395
    :cond_3c
    const/4 v1, 0x1

    .line 1396
    goto/16 :goto_13

    .line 1397
    .line 1398
    :cond_3d
    move-object/from16 v2, p2

    .line 1399
    .line 1400
    const/4 v1, 0x1

    .line 1401
    const/4 v3, 0x0

    .line 1402
    if-nez p7, :cond_3e

    .line 1403
    .line 1404
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v4

    .line 1408
    const-string/jumbo v5, "layout"

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v4

    .line 1415
    if-eqz v4, :cond_3e

    .line 1416
    .line 1417
    invoke-direct {v7, v2, v15, v8}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    .line 1418
    .line 1419
    .line 1420
    goto/16 :goto_13

    .line 1421
    .line 1422
    :cond_3e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1423
    .line 1424
    const-string v5, "Problem in package "

    .line 1425
    .line 1426
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1427
    .line 1428
    .line 1429
    iget-object v5, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1430
    .line 1431
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    .line 1434
    const-string v5, ":"

    .line 1435
    .line 1436
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    .line 1438
    .line 1439
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v4

    .line 1443
    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    .line 1445
    .line 1446
    if-eqz p7, :cond_3f

    .line 1447
    .line 1448
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    const-string v5, "Unknown element under <receiver>: "

    .line 1451
    .line 1452
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1453
    .line 1454
    .line 1455
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v5

    .line 1459
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    .line 1464
    .line 1465
    iget-object v5, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1466
    .line 1467
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    .line 1473
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v5

    .line 1477
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v4

    .line 1484
    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    .line 1486
    .line 1487
    goto :goto_10

    .line 1488
    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1489
    .line 1490
    const-string v5, "Unknown element under <activity>: "

    .line 1491
    .line 1492
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1493
    .line 1494
    .line 1495
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v5

    .line 1499
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    .line 1505
    iget-object v5, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1506
    .line 1507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    .line 1512
    .line 1513
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v5

    .line 1517
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    .line 1519
    .line 1520
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v4

    .line 1524
    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    .line 1526
    .line 1527
    :goto_10
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1528
    .line 1529
    .line 1530
    goto :goto_13

    .line 1531
    :cond_40
    :goto_11
    move/from16 v22, v2

    .line 1532
    .line 1533
    move-object v9, v3

    .line 1534
    move-object v15, v4

    .line 1535
    move-object v2, v5

    .line 1536
    move-object v0, v6

    .line 1537
    :goto_12
    const/4 v1, 0x1

    .line 1538
    const/4 v3, 0x0

    .line 1539
    :goto_13
    move-object v6, v0

    .line 1540
    :goto_14
    move-object v5, v2

    .line 1541
    move-object v3, v9

    .line 1542
    move-object v4, v15

    .line 1543
    move/from16 v2, v22

    .line 1544
    .line 1545
    const/4 v9, 0x0

    .line 1546
    const/4 v15, 0x2

    .line 1547
    goto/16 :goto_7

    .line 1548
    .line 1549
    :cond_41
    :goto_15
    if-nez v11, :cond_43

    .line 1550
    .line 1551
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 1552
    .line 1553
    iget-object v2, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 1554
    .line 1555
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1556
    .line 1557
    .line 1558
    move-result v2

    .line 1559
    if-lez v2, :cond_42

    .line 1560
    .line 1561
    move v9, v1

    .line 1562
    goto :goto_16

    .line 1563
    :cond_42
    const/4 v9, 0x0

    .line 1564
    :goto_16
    iput-boolean v9, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 1565
    .line 1566
    :cond_43
    return-object v8
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;
    .locals 24

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    move-object/from16 v5, p3

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v1, p6

    .line 12
    .line 13
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    .line 14
    .line 15
    invoke-virtual {v6, v5, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x7

    .line 20
    const/16 v8, 0x400

    .line 21
    .line 22
    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/16 v21, 0x0

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const-string v0, "<activity-alias> does not specify android:targetActivity"

    .line 32
    .line 33
    aput-object v0, v4, v8

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    .line 37
    .line 38
    return-object v21

    .line 39
    :cond_0
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v8, v3, v4}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .line 51
    .line 52
    return-object v21

    .line 53
    :cond_1
    iget-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 54
    .line 55
    if-nez v8, :cond_2

    .line 56
    .line 57
    new-instance v15, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 58
    .line 59
    const/4 v11, 0x2

    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v13, 0x1

    .line 62
    const/16 v14, 0xb

    .line 63
    .line 64
    const/16 v16, 0x8

    .line 65
    .line 66
    const/16 v17, 0xa

    .line 67
    .line 68
    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 69
    .line 70
    const/16 v18, 0x0

    .line 71
    .line 72
    const/16 v19, 0x6

    .line 73
    .line 74
    const/16 v20, 0x4

    .line 75
    .line 76
    move-object v8, v15

    .line 77
    move-object/from16 v9, p1

    .line 78
    .line 79
    move-object/from16 v22, v10

    .line 80
    .line 81
    move-object/from16 v10, p5

    .line 82
    .line 83
    move-object/from16 v23, v15

    .line 84
    .line 85
    move/from16 v15, v16

    .line 86
    .line 87
    move/from16 v16, v17

    .line 88
    .line 89
    move-object/from16 v17, v22

    .line 90
    .line 91
    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    .line 92
    .line 93
    .line 94
    move-object/from16 v8, v23

    .line 95
    .line 96
    iput-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 97
    .line 98
    const-string v9, "<activity-alias>"

    .line 99
    .line 100
    iput-object v9, v8, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 101
    .line 102
    :cond_2
    iget-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 103
    .line 104
    iput-object v2, v8, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 105
    .line 106
    move/from16 v9, p4

    .line 107
    .line 108
    iput v9, v8, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 109
    .line 110
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    const/4 v9, 0x0

    .line 117
    :goto_0
    if-ge v9, v8, :cond_4

    .line 118
    .line 119
    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    check-cast v10, Landroid/content/pm/PackageParser$Activity;

    .line 126
    .line 127
    iget-object v11, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 128
    .line 129
    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-eqz v11, :cond_3

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    move-object/from16 v10, v21

    .line 142
    .line 143
    :goto_1
    if-nez v10, :cond_5

    .line 144
    .line 145
    const-string v0, "<activity-alias> target activity "

    .line 146
    .line 147
    const-string v1, " not found in manifest"

    .line 148
    .line 149
    invoke-static {v0, v3, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const/4 v1, 0x0

    .line 154
    aput-object v0, v4, v1

    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    .line 158
    .line 159
    return-object v21

    .line 160
    :cond_5
    const/4 v0, 0x0

    .line 161
    new-instance v8, Landroid/content/pm/ActivityInfo;

    .line 162
    .line 163
    invoke-direct {v8}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object v3, v8, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v3, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 169
    .line 170
    iget v9, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 171
    .line 172
    iput v9, v8, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 173
    .line 174
    iget v9, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 175
    .line 176
    iput v9, v8, Landroid/content/pm/ActivityInfo;->flags:I

    .line 177
    .line 178
    iget v9, v3, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 179
    .line 180
    iput v9, v8, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 181
    .line 182
    iget v9, v3, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 183
    .line 184
    iput v9, v8, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 185
    .line 186
    iget v9, v3, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 187
    .line 188
    iput v9, v8, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 189
    .line 190
    iget v9, v3, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 191
    .line 192
    iput v9, v8, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 193
    .line 194
    iget-object v9, v3, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 195
    .line 196
    iput-object v9, v8, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 197
    .line 198
    iget v9, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 199
    .line 200
    iput v9, v8, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 201
    .line 202
    iget v9, v3, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 203
    .line 204
    iput v9, v8, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 205
    .line 206
    iget-object v9, v3, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 207
    .line 208
    iput-object v9, v8, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 209
    .line 210
    iget v9, v8, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 211
    .line 212
    if-nez v9, :cond_6

    .line 213
    .line 214
    iget v9, v3, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 215
    .line 216
    iput v9, v8, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 217
    .line 218
    :cond_6
    iget v9, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 219
    .line 220
    iput v9, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 221
    .line 222
    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 223
    .line 224
    iput-object v9, v8, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 225
    .line 226
    iget v9, v3, Landroid/content/pm/ActivityInfo;->theme:I

    .line 227
    .line 228
    iput v9, v8, Landroid/content/pm/ActivityInfo;->theme:I

    .line 229
    .line 230
    iget v9, v3, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 231
    .line 232
    iput v9, v8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 233
    .line 234
    iget v9, v3, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 235
    .line 236
    iput v9, v8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 237
    .line 238
    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 239
    .line 240
    iput-object v9, v8, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 241
    .line 242
    iget v9, v3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 243
    .line 244
    iput v9, v8, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 245
    .line 246
    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 247
    .line 248
    iput-object v9, v8, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 249
    .line 250
    iget v9, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 251
    .line 252
    iput v9, v8, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 253
    .line 254
    iget v9, v3, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    .line 255
    .line 256
    iput v9, v8, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    .line 257
    .line 258
    iget-boolean v3, v3, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 259
    .line 260
    iput-boolean v3, v8, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 261
    .line 262
    iput-boolean v3, v8, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    .line 263
    .line 264
    new-instance v9, Landroid/content/pm/PackageParser$Activity;

    .line 265
    .line 266
    iget-object v1, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 267
    .line 268
    invoke-direct {v9, v1, v8}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 269
    .line 270
    .line 271
    aget-object v1, v4, v0

    .line 272
    .line 273
    if-eqz v1, :cond_7

    .line 274
    .line 275
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    .line 277
    .line 278
    return-object v21

    .line 279
    :cond_7
    const/4 v1, 0x5

    .line 280
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    if-eqz v8, :cond_8

    .line 285
    .line 286
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 287
    .line 288
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    iput-boolean v1, v3, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 293
    .line 294
    :cond_8
    const/4 v1, 0x3

    .line 295
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    if-eqz v3, :cond_a

    .line 300
    .line 301
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 302
    .line 303
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    if-lez v11, :cond_9

    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    goto :goto_2

    .line 314
    :cond_9
    move-object/from16 v3, v21

    .line 315
    .line 316
    :goto_2
    iput-object v3, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 317
    .line 318
    :cond_a
    const/16 v3, 0x9

    .line 319
    .line 320
    const/16 v10, 0x400

    .line 321
    .line 322
    invoke-virtual {v2, v3, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    const-string v10, "PackageParser"

    .line 327
    .line 328
    if-eqz v3, :cond_c

    .line 329
    .line 330
    iget-object v11, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 331
    .line 332
    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 333
    .line 334
    invoke-static {v11, v3, v4}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    aget-object v12, v4, v0

    .line 339
    .line 340
    if-nez v12, :cond_b

    .line 341
    .line 342
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 343
    .line 344
    iput-object v11, v3, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v12, "Activity alias "

    .line 350
    .line 351
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object v12, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 355
    .line 356
    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v12, " specified invalid parentActivityName "

    .line 362
    .line 363
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    aput-object v21, v4, v0

    .line 377
    .line 378
    :cond_c
    :goto_3
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 379
    .line 380
    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 381
    .line 382
    const/high16 v11, 0x100000

    .line 383
    .line 384
    and-int/2addr v3, v11

    .line 385
    const/4 v12, 0x1

    .line 386
    if-eqz v3, :cond_d

    .line 387
    .line 388
    move v13, v12

    .line 389
    goto :goto_4

    .line 390
    :cond_d
    move v13, v0

    .line 391
    :goto_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 392
    .line 393
    .line 394
    aget-object v0, v4, v0

    .line 395
    .line 396
    if-eqz v0, :cond_e

    .line 397
    .line 398
    return-object v21

    .line 399
    :cond_e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 400
    .line 401
    .line 402
    move-result v14

    .line 403
    :goto_5
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eq v0, v12, :cond_1b

    .line 408
    .line 409
    if-ne v0, v1, :cond_f

    .line 410
    .line 411
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-le v2, v14, :cond_1b

    .line 416
    .line 417
    :cond_f
    if-eq v0, v1, :cond_1a

    .line 418
    .line 419
    const/4 v2, 0x4

    .line 420
    if-ne v0, v2, :cond_10

    .line 421
    .line 422
    goto :goto_5

    .line 423
    :cond_10
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    const-string/jumbo v1, "intent-filter"

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    const-string v12, " "

    .line 435
    .line 436
    if-eqz v0, :cond_17

    .line 437
    .line 438
    new-instance v15, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 439
    .line 440
    invoke-direct {v15, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 441
    .line 442
    .line 443
    const/4 v3, 0x1

    .line 444
    const/16 v16, 0x1

    .line 445
    .line 446
    move-object/from16 v0, p0

    .line 447
    .line 448
    move-object/from16 v1, p2

    .line 449
    .line 450
    move-object/from16 v2, p3

    .line 451
    .line 452
    move/from16 v4, v16

    .line 453
    .line 454
    move-object v5, v15

    .line 455
    move-object/from16 v6, p5

    .line 456
    .line 457
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-nez v0, :cond_11

    .line 462
    .line 463
    return-object v21

    .line 464
    :cond_11
    invoke-virtual {v15}, Landroid/content/IntentFilter;->countActions()I

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    if-nez v0, :cond_12

    .line 469
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    const-string v1, "No actions in intent filter at "

    .line 473
    .line 474
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    goto :goto_6

    .line 500
    :cond_12
    iget-object v0, v9, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 501
    .line 502
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    :goto_6
    if-eqz v13, :cond_13

    .line 506
    .line 507
    const/4 v0, 0x1

    .line 508
    goto :goto_7

    .line 509
    :cond_13
    invoke-direct {v7, v15}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-eqz v0, :cond_14

    .line 514
    .line 515
    const/4 v0, 0x2

    .line 516
    goto :goto_7

    .line 517
    :cond_14
    const/4 v0, 0x0

    .line 518
    :goto_7
    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v15}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_15

    .line 526
    .line 527
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 528
    .line 529
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 530
    .line 531
    or-int/2addr v1, v11

    .line 532
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 533
    .line 534
    :cond_15
    invoke-virtual {v15}, Landroid/content/IntentFilter;->isImplicitlyVisibleToInstantApp()Z

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    if-eqz v0, :cond_16

    .line 539
    .line 540
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 541
    .line 542
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 543
    .line 544
    const/high16 v2, 0x200000

    .line 545
    .line 546
    or-int/2addr v1, v2

    .line 547
    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 548
    .line 549
    :cond_16
    move-object/from16 v2, p2

    .line 550
    .line 551
    move-object/from16 v3, p3

    .line 552
    .line 553
    move-object/from16 v4, p5

    .line 554
    .line 555
    goto :goto_8

    .line 556
    :cond_17
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    const-string/jumbo v1, "meta-data"

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-eqz v0, :cond_18

    .line 568
    .line 569
    iget-object v0, v9, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 570
    .line 571
    move-object/from16 v2, p2

    .line 572
    .line 573
    move-object/from16 v3, p3

    .line 574
    .line 575
    move-object/from16 v4, p5

    .line 576
    .line 577
    invoke-direct {v7, v2, v3, v0, v4}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    iput-object v0, v9, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 582
    .line 583
    if-nez v0, :cond_19

    .line 584
    .line 585
    return-object v21

    .line 586
    :cond_18
    move-object/from16 v2, p2

    .line 587
    .line 588
    move-object/from16 v3, p3

    .line 589
    .line 590
    move-object/from16 v4, p5

    .line 591
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    const-string v1, "Unknown element under <activity-alias>: "

    .line 595
    .line 596
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    const-string v1, " at "

    .line 607
    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 612
    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .line 632
    .line 633
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 634
    .line 635
    .line 636
    :cond_19
    :goto_8
    const/4 v0, 0x3

    .line 637
    move v1, v0

    .line 638
    goto :goto_9

    .line 639
    :cond_1a
    move-object v3, v5

    .line 640
    move-object v2, v6

    .line 641
    :goto_9
    const/4 v12, 0x1

    .line 642
    move-object v6, v2

    .line 643
    move-object v5, v3

    .line 644
    goto/16 :goto_5

    .line 645
    .line 646
    :cond_1b
    if-nez v8, :cond_1d

    .line 647
    .line 648
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 649
    .line 650
    iget-object v1, v9, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 651
    .line 652
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-lez v1, :cond_1c

    .line 657
    .line 658
    const/4 v1, 0x1

    .line 659
    goto :goto_a

    .line 660
    :cond_1c
    const/4 v1, 0x0

    .line 661
    :goto_a
    iput-boolean v1, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 662
    .line 663
    :cond_1d
    return-object v9
.end method

.method private parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v2, v3, :cond_5

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    if-ne v2, v3, :cond_1

    .line 16
    .line 17
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-le v4, v1, :cond_5

    .line 22
    .line 23
    :cond_1
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    if-ne v2, v3, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "additional-certificate"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    .line 42
    .line 43
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    const-string p1, "Bad additional-certificate declaration with empty certDigest:"

    .line 62
    .line 63
    invoke-static {p1, v4}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    aput-object p1, p3, v3

    .line 68
    .line 69
    const/16 p1, -0x6c

    .line 70
    .line 71
    iput p1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 72
    .line 73
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    return-object p1

    .line 81
    :cond_3
    const-string v2, ":"

    .line 82
    .line 83
    const-string v3, ""

    .line 84
    .line 85
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-class v3, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v3, v0, v2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, [Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    return-object v0
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Component<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_4

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-ne v1, v3, :cond_1

    .line 14
    .line 15
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-le v4, v0, :cond_4

    .line 20
    .line 21
    :cond_1
    if-eq v1, v3, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string/jumbo v2, "meta-data"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {p0, p1, p2, v1, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    return p1

    .line 52
    :cond_3
    const-string v1, "Unknown element under "

    .line 53
    .line 54
    const-string v2, ": "

    .line 55
    .line 56
    invoke-static {v1, p3, v2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " at "

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, " "

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "PackageParser"

    .line 94
    .line 95
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    return v2
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 8

    const-string v0, "Failed to parse "

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/content/pm/PackageParser;->newConfiguredAssetManager()Landroid/content/res/AssetManager;

    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3
    :try_start_1
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    invoke-virtual {v5}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const-string v5, "AndroidManifest.xml"

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    and-int/lit16 v5, p1, 0x100

    if-eqz v5, :cond_0

    .line 7
    :try_start_2
    new-instance v5, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v5, v2}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    const-string v2, "collectCertificates"

    const-wide/32 v6, 0x40000

    .line 8
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    :try_start_3
    invoke-static {v5, p0, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 11
    iget-object v2, v5, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 12
    iget-object p0, v5, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 13
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_2

    :cond_0
    move-object p0, v2

    .line 14
    :goto_0
    invoke-static {v1, v4, v4, v2, p0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 15
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 16
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    .line 17
    :cond_1
    :try_start_5
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v4, -0x64

    invoke-direct {p0, v4, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    goto :goto_1

    :catch_5
    move-exception p0

    :goto_1
    move-object v4, v2

    :goto_2
    move-object v2, v3

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v3, v2

    goto :goto_6

    :catch_6
    move-exception p0

    goto :goto_3

    :catch_7
    move-exception p0

    goto :goto_3

    :catch_8
    move-exception p0

    :goto_3
    move-object v4, v2

    :goto_4
    :try_start_6
    const-string p1, "PackageParser"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    new-instance p1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x66

    invoke-direct {p1, v1, v0, p0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p0

    move-object v3, v2

    :goto_5
    move-object v2, v4

    .line 20
    :goto_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 21
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method private static parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 25

    move-object/from16 v0, p2

    .line 22
    invoke-static/range {p1 .. p2}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v15, v2

    move v5, v3

    move v10, v5

    move v13, v10

    move v14, v13

    move/from16 v19, v14

    move/from16 v24, v19

    move-object v11, v4

    .line 23
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 24
    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "installLocation"

    .line 25
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 26
    invoke-interface {v0, v5, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v15

    goto :goto_1

    :cond_0
    const-string/jumbo v7, "versionCode"

    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 28
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v13

    goto :goto_1

    :cond_1
    const-string/jumbo v7, "revisionCode"

    .line 29
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 30
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v14

    goto :goto_1

    :cond_2
    const-string v7, "coreApp"

    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 32
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v19

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "isolatedSplits"

    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 34
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v24

    goto :goto_1

    :cond_4
    const-string v7, "configForSplit"

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 36
    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "isFeatureSplit"

    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 38
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    :cond_6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 39
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 40
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move/from16 v20, v3

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v5

    .line 41
    :cond_8
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_14

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    .line 42
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-lt v8, v2, :cond_14

    :cond_9
    if-eq v6, v7, :cond_8

    const/4 v7, 0x4

    if-ne v6, v7, :cond_a

    goto :goto_2

    .line 43
    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-eq v6, v2, :cond_b

    goto :goto_2

    :cond_b
    const-string/jumbo v6, "package-verifier"

    .line 44
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 45
    invoke-static/range {p2 .. p2}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 46
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    const-string v6, "application"

    .line 47
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v3

    .line 48
    :goto_3
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 49
    invoke-interface {v0, v6}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "debuggable"

    .line 50
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 51
    invoke-interface {v0, v6, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v8

    move/from16 v20, v8

    :cond_d
    const-string/jumbo v8, "multiArch"

    .line 52
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 53
    invoke-interface {v0, v6, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v8

    move/from16 v21, v8

    :cond_e
    const-string/jumbo v8, "use32bitAbi"

    .line 54
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 55
    invoke-interface {v0, v6, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v8

    move/from16 v22, v8

    :cond_f
    const-string v8, "extractNativeLibs"

    .line 56
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 57
    invoke-interface {v0, v6, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v7

    move/from16 v23, v7

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_11
    const-string/jumbo v6, "uses-split"

    .line 58
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v4, :cond_12

    const-string v6, "PackageParser"

    const-string v7, "Only one <uses-split> permitted. Ignoring others."

    .line 59
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v4, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v6, "name"

    .line 60
    invoke-interface {v0, v4, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    goto/16 :goto_2

    .line 61
    :cond_13
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x6c

    const-string v2, "<uses-split> tag requires \'android:name\' attribute"

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 62
    :cond_14
    new-instance v0, Landroid/content/pm/PackageParser$ApkLite;

    move-object v6, v0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    move-object/from16 v7, p0

    move-object v1, v12

    move-object v12, v4

    move-object/from16 v16, v1

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    invoke-direct/range {v6 .. v24}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;ZZZZZZ)V

    return-object v0
.end method

.method private parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .locals 10

    const-string v0, "Failed to read manifest from "

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v1, "/mnt/expand/"

    .line 2
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x2f

    const/16 v2, 0xc

    .line 3
    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 4
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, v8

    :goto_0
    const/4 v1, 0x1

    .line 5
    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 7
    invoke-static {p2, v7, p3}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result p1

    .line 8
    :try_start_0
    new-instance v3, Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v3, p2, v2, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const-string v2, "AndroidManifest.xml"

    .line 9
    invoke-virtual {p2, p1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-array p2, v1, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, v7

    move-object v4, p1

    move v5, p3

    move-object v6, p2

    .line 10
    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p3, v9}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3, v9}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p3, v7}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p3, v8}, Landroid/content/pm/PackageParser$Package;->setSignatures([Landroid/content/pm/Signature;)V
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p3

    .line 16
    :cond_1
    :try_start_2
    new-instance p3, Landroid/content/pm/PackageParser$PackageParserException;

    iget v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object p2, p2, v3

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v1, p2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p3
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    move-object v8, p1

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v8, p1

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v8, p1

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 18
    :goto_1
    :try_start_3
    new-instance p1, Landroid/content/pm/PackageParser$PackageParserException;

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v0, -0x66

    invoke-direct {p1, v0, p3, p2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p2

    .line 19
    :goto_2
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    :goto_3
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p2
.end method

.method private parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 9

    const-string v0, "Expected base APK, but found split "

    const/16 v1, -0x6a

    const/4 v2, 0x0

    .line 21
    :try_start_0
    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v3

    .line 22
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 23
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v7

    .line 26
    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 27
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v0, :cond_1

    .line 28
    invoke-interface {v0, v5, p1}, Landroid/content/pm/PackageParser$Callback;->getOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    array-length v1, v0

    if-lez v1, :cond_1

    .line 30
    array-length v1, v0

    move v3, v7

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    .line 31
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    :cond_1
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, v5}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iput v6, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    const/4 v5, 0x5

    .line 35
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    const/4 v5, 0x2

    .line 36
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 37
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    :cond_2
    const-string v5, "coreApp"

    .line 38
    invoke-interface {p3, v2, v5, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 40
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0

    .line 41
    :catch_0
    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v2
.end method

.method private parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 11

    .line 1
    move-object v7, p0

    .line 2
    move-object v8, p1

    .line 3
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/16 v1, -0x6c

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    if-le v0, v2, :cond_0

    .line 18
    .line 19
    const-string v0, "Maximum number of packages per APK is: 5"

    .line 20
    .line 21
    aput-object v0, p5, v9

    .line 22
    .line 23
    iput v1, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 24
    .line 25
    return v9

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    const-string/jumbo v2, "package"

    .line 28
    .line 29
    .line 30
    move-object v4, p3

    .line 31
    invoke-interface {p3, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v10, 0x1

    .line 36
    invoke-static {v0, v10, v9}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    const/16 v0, -0x6a

    .line 43
    .line 44
    iput v0, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 45
    .line 46
    return v9

    .line 47
    :cond_1
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const-string v3, "PackageParser"

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "Child package name cannot be equal to parent package name: "

    .line 60
    .line 61
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    aput-object v0, p5, v9

    .line 77
    .line 78
    iput v1, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 79
    .line 80
    return v9

    .line 81
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    const-string v2, "Duplicate child package:"

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    aput-object v0, p5, v9

    .line 97
    .line 98
    iput v1, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 99
    .line 100
    return v9

    .line 101
    :cond_3
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    .line 102
    .line 103
    invoke-direct {v1, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget v0, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 107
    .line 108
    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 109
    .line 110
    iget v0, v8, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 111
    .line 112
    iput v0, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 113
    .line 114
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 119
    .line 120
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 121
    .line 122
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 123
    .line 124
    iput v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 125
    .line 126
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 127
    .line 128
    iput v2, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 129
    .line 130
    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    .line 131
    .line 132
    move-object v0, p0

    .line 133
    move-object v3, p2

    .line 134
    move-object v4, p3

    .line 135
    move v5, p4

    .line 136
    move-object/from16 v6, p5

    .line 137
    .line 138
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-nez v0, :cond_4

    .line 143
    .line 144
    return v9

    .line 145
    :cond_4
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 146
    .line 147
    if-nez v1, :cond_5

    .line 148
    .line 149
    new-instance v1, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 155
    .line 156
    :cond_5
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    iput-object v8, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 162
    .line 163
    return v10
.end method

.method private parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/PackageParser$Package;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    const/4 v0, 0x0

    .line 1
    iput-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {v9, v10, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    and-int/lit16 v13, v11, 0x800

    const/16 v14, -0x6b

    if-eqz v13, :cond_0

    const-string/jumbo v1, "sharedUserId not allowed in ephemeral application"

    .line 5
    aput-object v1, v12, v2

    .line 6
    iput v14, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v0

    .line 7
    :cond_0
    invoke-static {v3, v5, v2}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v13, "android"

    .line 8
    iget-object v15, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v1, "<manifest> specifies bad sharedUserId name \""

    const-string v4, "\": "

    .line 9
    invoke-static {v1, v3, v4, v5}, Landroid/accessibilityservice/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    aput-object v1, v12, v2

    .line 11
    iput v14, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v0

    .line 12
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v7, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    :cond_2
    const/4 v3, -0x1

    const/4 v5, 0x4

    .line 14
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v7, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 15
    iget-object v13, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v3, v13, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v3, 0x7

    const/4 v13, 0x1

    .line 16
    invoke-virtual {v1, v3, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 17
    iget-object v13, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v3, v13, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    and-int/lit8 v3, v11, 0x10

    if-eqz v3, :cond_3

    .line 18
    iget v3, v13, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v3, v5

    iput v3, v13, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_3
    and-int/lit8 v3, v11, 0x20

    if-eqz v3, :cond_4

    .line 19
    iget v3, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x40000

    or-int/2addr v3, v14

    iput v3, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_4
    const/4 v3, 0x6

    .line 20
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v13, 0x8000

    or-int/2addr v3, v13

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 22
    :cond_5
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v11, v16

    move/from16 v18, v17

    move-object/from16 v16, v0

    move/from16 v23, v14

    move v14, v1

    move v1, v5

    move v5, v3

    move/from16 v3, v23

    move/from16 v24, v15

    move v15, v2

    move/from16 v2, v24

    .line 23
    :goto_0
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move/from16 v17, v2

    const-string v2, "PackageParser"

    move/from16 v19, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_46

    if-ne v0, v4, :cond_6

    .line 24
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v13, :cond_46

    :cond_6
    if-eq v0, v4, :cond_45

    if-ne v0, v1, :cond_7

    goto/16 :goto_17

    .line 25
    :cond_7
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v3, " at "

    if-eqz v8, :cond_8

    .line 26
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "Skipping unsupported element under <manifest>: "

    .line 27
    invoke-static {v4, v0, v3}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    iget-object v3, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_8
    const-string v4, "application"

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v15, :cond_9

    const-string v0, "<manifest> has more than one <application>"

    .line 33
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x3

    move v4, v1

    move/from16 v8, v19

    move/from16 v19, v15

    move v15, v5

    move/from16 v23, v13

    move v13, v11

    move/from16 v11, v17

    move/from16 v17, v23

    goto/16 :goto_10

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, v17

    move-object/from16 v2, p3

    move/from16 v8, v19

    move-object/from16 v3, p4

    move/from16 v17, v13

    move v13, v4

    move/from16 v4, p5

    move v15, v5

    move-object/from16 v5, p6

    .line 35
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x3

    move v3, v8

    move v2, v13

    move v5, v15

    const/4 v15, 0x1

    goto/16 :goto_16

    :cond_b
    move/from16 v8, v19

    move/from16 v19, v15

    move v15, v5

    move/from16 v23, v17

    move/from16 v17, v13

    move/from16 v13, v23

    const-string/jumbo v5, "overlay"

    .line 36
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v4, 0x2

    if-eqz v5, :cond_10

    .line 37
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 40
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Landroid/content/pm/PackageParser$Package;->mIsStaticOverlay:Z

    const/4 v3, 0x3

    .line 41
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 42
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    const/16 v5, -0x6c

    if-nez v0, :cond_c

    const-string v0, "<overlay> does not specify a target package"

    .line 45
    aput-object v0, v12, v1

    .line 46
    iput v5, v6, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_c
    iget v0, v7, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v0, :cond_f

    const/16 v1, 0x270f

    if-le v0, v1, :cond_d

    goto :goto_2

    .line 48
    :cond_d
    invoke-direct {v6, v3, v4}, Landroid/content/pm/PackageParser;->checkOverlayRequiredSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping target and overlay pair "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": overlay ignored due to required system property: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    .line 50
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :cond_f
    :goto_2
    const/4 v0, 0x0

    const-string v1, "<overlay> priority must be between 0 and 9999"

    const/4 v2, 0x0

    .line 51
    aput-object v1, v12, v2

    .line 52
    iput v5, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v0

    :cond_10
    const/4 v5, 0x0

    const-string/jumbo v4, "key-sets"

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 54
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-object v5

    :cond_11
    const-string/jumbo v4, "permission-group"

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 56
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x3

    goto/16 :goto_5

    :cond_13
    const/4 v5, 0x0

    const-string/jumbo v4, "permission"

    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 58
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-object v5

    :cond_14
    const-string/jumbo v4, "permission-tree"

    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 60
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-object v5

    :cond_15
    const-string/jumbo v4, "uses-permission"

    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 62
    invoke-direct {v6, v7, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-object v5

    :cond_16
    const-string/jumbo v4, "uses-permission-sdk-m"

    .line 63
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string/jumbo v4, "uses-permission-sdk-23"

    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto/16 :goto_13

    :cond_17
    const-string/jumbo v4, "uses-configuration"

    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 66
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 67
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {v9, v10, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 68
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    const/4 v4, 0x1

    .line 69
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    const/4 v3, 0x2

    .line 70
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 71
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_18
    const/4 v3, 0x3

    .line 72
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    const/4 v3, 0x4

    .line 73
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 74
    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    const/4 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 75
    :cond_19
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 77
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_1a
    const/4 v4, 0x1

    const-string/jumbo v5, "uses-feature"

    .line 78
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    .line 79
    invoke-direct {v6, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 80
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 81
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 82
    new-instance v1, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v1}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 83
    iget v0, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v0, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 84
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 85
    :cond_1b
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    const/4 v5, 0x0

    :cond_1c
    const/4 v0, 0x3

    move v1, v0

    move-object v0, v5

    :goto_5
    move/from16 v21, v11

    move v11, v13

    goto/16 :goto_15

    :cond_1d
    const-string v4, "feature-group"

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 87
    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 88
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/16 v20, 0x0

    move/from16 v22, v8

    move/from16 v21, v11

    const/4 v11, 0x1

    move-object/from16 v23, v20

    move/from16 v20, v13

    move-object/from16 v13, v23

    .line 89
    :goto_6
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v11, :cond_22

    const/4 v11, 0x3

    if-ne v8, v11, :cond_1e

    .line 90
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v4, :cond_22

    const/4 v11, 0x3

    :cond_1e
    if-eq v8, v11, :cond_21

    const/4 v11, 0x4

    if-ne v8, v11, :cond_1f

    goto :goto_8

    .line 91
    :cond_1f
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 92
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 93
    invoke-direct {v6, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v8

    .line 94
    iget v11, v8, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/pm/FeatureInfo;->flags:I

    .line 95
    invoke-static {v13, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    goto :goto_7

    :cond_20
    const-string v11, "Unknown element under <feature-group>: "

    .line 96
    invoke-static {v11, v8, v3}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 97
    iget-object v11, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 99
    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_7
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_21
    :goto_8
    const/4 v11, 0x1

    goto :goto_6

    :cond_22
    if-eqz v13, :cond_23

    .line 101
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/FeatureInfo;

    iput-object v1, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 102
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/FeatureInfo;

    iput-object v1, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 103
    :cond_23
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    goto/16 :goto_c

    :cond_24
    move/from16 v22, v8

    move/from16 v21, v11

    move/from16 v20, v13

    const-string/jumbo v4, "uses-sdk"

    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 105
    sget v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v0, :cond_2b

    .line 106
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v9, v10, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 108
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_25

    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_25

    .line 109
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v2

    goto :goto_9

    .line 110
    :cond_25
    iget v2, v2, Landroid/util/TypedValue;->data:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v2

    goto :goto_a

    :cond_26
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_9
    const/4 v5, 0x1

    move/from16 v23, v3

    move-object v3, v2

    move/from16 v2, v23

    :goto_a
    const/4 v8, 0x1

    .line 111
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    if-eqz v8, :cond_28

    .line 112
    iget v11, v8, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_27

    iget-object v11, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v11, :cond_27

    .line 113
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_28

    move-object v3, v4

    goto :goto_b

    .line 114
    :cond_27
    iget v2, v8, Landroid/util/TypedValue;->data:I

    .line 115
    :cond_28
    :goto_b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    sget-object v1, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v5, v3, v0, v1, v12}, Landroid/content/pm/PackageParser;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/16 v5, -0xc

    if-gez v3, :cond_29

    .line 117
    iput v5, v6, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v0, 0x0

    return-object v0

    :cond_29
    const/4 v8, 0x0

    .line 118
    invoke-static {v2, v4, v0, v1, v12}, Landroid/content/pm/PackageParser;->computeTargetSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2a

    .line 119
    iput v5, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v8

    .line 120
    :cond_2a
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 121
    iput v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 122
    :cond_2b
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_c
    const/4 v0, 0x0

    const/4 v1, 0x3

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v8, v22

    goto/16 :goto_e

    :cond_2c
    const-string/jumbo v4, "supports-screens"

    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 124
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 126
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 127
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const/4 v1, 0x1

    .line 128
    invoke-virtual {v0, v1, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    const/4 v1, 0x2

    .line 129
    invoke-virtual {v0, v1, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    const/4 v1, 0x3

    move/from16 v8, v22

    .line 130
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    const/4 v2, 0x5

    move/from16 v11, v20

    .line 131
    invoke-virtual {v0, v2, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    const/4 v4, 0x4

    move/from16 v13, v21

    .line 132
    invoke-virtual {v0, v4, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    const/4 v4, 0x0

    move/from16 v8, v18

    .line 133
    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v18

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x0

    move/from16 v15, v19

    goto/16 :goto_16

    :cond_2d
    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v8, v22

    const/4 v4, 0x0

    const/16 v16, 0x3

    const-string/jumbo v5, "protected-broadcast"

    .line 136
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 137
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_2f

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_2f

    .line 140
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v0, :cond_2e

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 142
    :cond_2e
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 143
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2f
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_d

    :cond_30
    const-string/jumbo v4, "instrumentation"

    .line 145
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 146
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v0

    if-nez v0, :cond_37

    const/4 v0, 0x0

    return-object v0

    :cond_31
    const-string/jumbo v4, "original-package"

    .line 147
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 148
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 151
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v2, :cond_32

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 153
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 154
    :cond_32
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_d

    :cond_34
    const-string v4, "adopt-permissions"

    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 158
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_36

    .line 161
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v0, :cond_35

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 163
    :cond_35
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_36
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_37
    :goto_d
    const/4 v0, 0x0

    move/from16 v1, v16

    :goto_e
    move/from16 v21, v13

    goto/16 :goto_15

    :cond_38
    const-string/jumbo v4, "uses-gl-texture"

    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 166
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    :cond_39
    const-string v4, "compatible-screens"

    .line 167
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 168
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    :cond_3a
    const-string/jumbo v4, "supports-input"

    .line 169
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 170
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    :cond_3b
    const-string v4, "eat-comment"

    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 172
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    :cond_3c
    const-string/jumbo v4, "package"

    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 174
    sget-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    if-nez v0, :cond_3d

    .line 175
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_f
    const/4 v0, 0x0

    move/from16 v4, v16

    :goto_10
    move/from16 v21, v13

    goto/16 :goto_18

    :cond_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 176
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    return-object v0

    :cond_3e
    move/from16 v21, v13

    goto/16 :goto_14

    :cond_3f
    const-string/jumbo v4, "restrict-update"

    .line 177
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    and-int/lit8 v0, p5, 0x40

    if-eqz v0, :cond_41

    .line 178
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, v7, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    if-eqz v1, :cond_41

    .line 182
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 183
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v5, 0x4

    :goto_11
    if-ge v3, v0, :cond_40

    .line 184
    div-int/lit8 v4, v3, 0x2

    move/from16 v20, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move/from16 v21, v13

    const/16 v13, 0x10

    invoke-static {v0, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    shl-int/2addr v0, v5

    add-int/lit8 v5, v3, 0x1

    .line 185
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v5, v0

    int-to-byte v0, v5

    aput-byte v0, v2, v4

    add-int/lit8 v3, v3, 0x2

    const/4 v5, 0x4

    move/from16 v0, v20

    move/from16 v13, v21

    goto :goto_11

    :cond_40
    move/from16 v21, v13

    .line 186
    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    goto :goto_12

    :cond_41
    move/from16 v21, v13

    .line 187
    :goto_12
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_14

    :cond_42
    move/from16 v21, v13

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unknown element under <manifest>: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x0

    move/from16 v4, v16

    goto :goto_18

    :cond_43
    :goto_13
    move/from16 v21, v11

    move v11, v13

    const/16 v16, 0x3

    .line 192
    invoke-direct {v6, v7, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x0

    return-object v0

    :cond_44
    :goto_14
    const/4 v0, 0x0

    move/from16 v1, v16

    :goto_15
    move v3, v8

    move v2, v11

    move v5, v15

    move/from16 v15, v19

    move/from16 v11, v21

    :goto_16
    const/4 v4, 0x4

    move-object/from16 v16, v0

    move/from16 v23, v4

    move v4, v1

    move/from16 v1, v23

    goto :goto_19

    :cond_45
    :goto_17
    move/from16 v21, v11

    move/from16 v11, v17

    move/from16 v8, v19

    move/from16 v17, v13

    move/from16 v19, v15

    move v15, v5

    move-object/from16 v0, v16

    :goto_18
    const/4 v1, 0x4

    move-object/from16 v16, v0

    move v3, v8

    move v2, v11

    move v5, v15

    move/from16 v15, v19

    move/from16 v11, v21

    :goto_19
    move-object/from16 v8, p2

    move/from16 v13, v17

    goto/16 :goto_0

    :cond_46
    move/from16 v21, v11

    move/from16 v11, v17

    move/from16 v8, v19

    move/from16 v19, v15

    move v15, v5

    if-nez v19, :cond_47

    .line 193
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const/4 v1, 0x0

    .line 194
    aput-object v0, v12, v1

    const/16 v0, -0x6d

    .line 195
    iput v0, v6, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_1a

    :cond_47
    const/4 v1, 0x0

    .line 196
    :goto_1a
    sget-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v0, v0

    move v4, v1

    move-object/from16 v3, v16

    :goto_1b
    if-ge v4, v0, :cond_4b

    .line 197
    sget-object v5, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v5, v5, v4

    .line 198
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v10, v5, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v9, v10, :cond_48

    goto :goto_1d

    .line 199
    :cond_48
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v10, v5, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    if-nez v3, :cond_49

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 201
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": compat added "

    .line 202
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_49
    const/16 v9, 0x20

    .line 203
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    :goto_1c
    iget-object v9, v5, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v5, v5, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_4b
    :goto_1d
    if-eqz v3, :cond_4c

    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_4c
    sget-object v0, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    array-length v0, v0

    move v2, v1

    :goto_1e
    if-ge v2, v0, :cond_50

    .line 208
    sget-object v3, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    aget-object v3, v3, v2

    .line 209
    iget-object v4, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v5, v3, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    if-ge v4, v5, :cond_4f

    iget-object v4, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    .line 210
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_20

    :cond_4d
    move v4, v1

    .line 211
    :goto_1f
    iget-object v5, v3, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    array-length v9, v5

    if-ge v4, v9, :cond_4f

    .line 212
    aget-object v5, v5, v4

    .line 213
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    .line 214
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_4f
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_50
    if-ltz v15, :cond_51

    if-lez v15, :cond_52

    .line 215
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_52

    .line 216
    :cond_51
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_52
    if-eqz v14, :cond_53

    .line 217
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_53
    if-ltz v8, :cond_54

    if-lez v8, :cond_55

    .line 218
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_55

    .line 219
    :cond_54
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_55
    if-ltz v11, :cond_56

    if-lez v11, :cond_57

    .line 220
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_57

    .line 221
    :cond_56
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_57
    if-ltz v21, :cond_58

    if-lez v21, :cond_59

    .line 222
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_59

    .line 223
    :cond_58
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_59
    if-ltz v18, :cond_5a

    if-lez v18, :cond_5b

    .line 224
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5b

    .line 225
    :cond_5a
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 226
    :cond_5b
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->usesCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 227
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V

    :cond_5c
    return-object v7
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 23

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    move-object/from16 v6, p3

    move-object/from16 v5, p5

    .line 1
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    iget-object v3, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v7, v6, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const-string v13, "<application>"

    const/4 v15, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x2a

    const/16 v20, 0x16

    const/16 v21, 0x1e

    move-object/from16 v10, p1

    move-object v11, v4

    move-object/from16 v12, p5

    move-object v14, v2

    .line 4
    invoke-static/range {v10 .. v21}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v1, -0x6c

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    iput v1, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v10

    .line 7
    :cond_0
    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8
    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x4

    const/16 v1, 0x400

    .line 9
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 10
    invoke-static {v3, v11, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    :cond_2
    const/16 v11, 0x11

    const/4 v12, 0x1

    .line 11
    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    const/16 v13, 0x10

    const/16 v14, 0x20

    if-eqz v11, :cond_8

    .line 12
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const v15, 0x8000

    or-int/2addr v11, v15

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 13
    invoke-virtual {v2, v13, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 14
    invoke-static {v3, v11, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/16 v11, 0x12

    .line 15
    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 16
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x10000

    or-int/2addr v11, v13

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_3
    const/16 v11, 0x15

    .line 17
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 18
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x20000

    or-int/2addr v11, v13

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 19
    :cond_4
    invoke-virtual {v2, v14, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 20
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x4000000

    or-int/2addr v11, v13

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_5
    const/16 v11, 0x28

    .line 21
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 22
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v11, v11, 0x2000

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_6
    const/16 v11, 0x23

    .line 23
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 24
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v13, :cond_8

    .line 25
    iget v11, v11, Landroid/util/TypedValue;->data:I

    if-nez v11, :cond_7

    const/4 v11, -0x1

    goto :goto_0

    :cond_7
    move v11, v10

    :goto_0
    iput v11, v4, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 26
    :cond_8
    invoke-virtual {v2, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->theme:I

    const/16 v11, 0xd

    .line 27
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    and-int/lit8 v11, p4, 0x1

    const/16 v13, 0x8

    if-eqz v11, :cond_a

    .line 28
    invoke-virtual {v2, v13, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x2d

    .line 29
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 30
    iget-object v15, v9, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v15, v11}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 31
    :cond_9
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v11, v13

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_a
    const/16 v11, 0x1b

    .line 32
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 33
    iput-boolean v12, v8, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    :cond_b
    const/16 v11, 0x1c

    .line 34
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 35
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_c

    .line 36
    iput-object v11, v8, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    :cond_c
    const/16 v11, 0x1d

    .line 37
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 38
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_d

    .line 39
    iput-object v11, v8, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    :cond_d
    const/16 v11, 0xa

    .line 40
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 41
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_e
    const/16 v11, 0x14

    .line 42
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 43
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v11, v11, 0x4000

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 44
    :cond_f
    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v13, 0xe

    if-lt v11, v13, :cond_10

    move v11, v12

    goto :goto_1

    :cond_10
    move v11, v10

    :goto_1
    const/16 v15, 0x17

    invoke-virtual {v2, v15, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v8, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    if-eqz v11, :cond_11

    .line 45
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v15, 0x20000000

    or-int/2addr v11, v15

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_11
    const/4 v11, 0x7

    .line 46
    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 47
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v11

    iput v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 48
    :cond_12
    invoke-virtual {v2, v13, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 49
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v14

    iput v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_13
    const/4 v0, 0x5

    .line 50
    invoke-virtual {v2, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 51
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 52
    :cond_14
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_15

    const/16 v0, 0xf

    .line 53
    invoke-virtual {v2, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 54
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_15
    const/16 v0, 0x18

    .line 55
    invoke-virtual {v2, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 56
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x100000

    or-int/2addr v11, v13

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_16
    const/16 v11, 0x24

    .line 57
    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 58
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x8000000

    or-int/2addr v11, v13

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_17
    const/16 v11, 0x1a

    .line 59
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 60
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x400000

    or-int/2addr v11, v13

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_18
    const/16 v11, 0x21

    .line 61
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 62
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, -0x80000000

    or-int/2addr v11, v13

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_19
    const/16 v11, 0x22

    .line 63
    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 64
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x10000000

    or-int/2addr v11, v13

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_1a
    const/16 v11, 0x26

    .line 65
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 66
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v11, v14

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_1b
    const/16 v11, 0x27

    .line 67
    invoke-virtual {v2, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 68
    iget v11, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v11, v11, 0x40

    iput v11, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_1c
    const/16 v11, 0x25

    .line 69
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 70
    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 71
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v0, v1

    iput v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_2

    .line 72
    :cond_1d
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_2

    .line 73
    :cond_1e
    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v11, v0, :cond_1f

    .line 74
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_1f
    :goto_2
    const/16 v0, 0x2c

    const/4 v11, 0x0

    .line 75
    invoke-virtual {v2, v0, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v4, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    const/16 v0, 0x29

    .line 76
    invoke-virtual {v2, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v4, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    const/16 v0, 0x2b

    const/4 v11, -0x1

    .line 77
    invoke-virtual {v2, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v4, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v0, 0x6

    .line 78
    invoke-virtual {v2, v0, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    if-eqz v0, :cond_20

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_20
    move-object v0, v11

    :goto_3
    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 80
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v13, 0xc

    const/16 v14, 0x8

    if-lt v0, v14, :cond_21

    .line 81
    invoke-virtual {v2, v13, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 82
    :cond_21
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_4
    iget-object v13, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v13, v0, v5}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 84
    aget-object v0, v5, v10

    if-nez v0, :cond_23

    .line 85
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v13, 0xb

    const/16 v14, 0x8

    if-lt v0, v14, :cond_22

    .line 86
    invoke-virtual {v2, v13, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 87
    :cond_22
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v13, v0

    .line 88
    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v14, v9, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v15, v2

    move-object v2, v13

    move-object v13, v3

    move/from16 v3, p4

    move-object v7, v4

    move-object v4, v14

    move-object v14, v5

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/16 v0, 0x9

    .line 89
    invoke-virtual {v15, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v0, 0x1f

    .line 90
    invoke-virtual {v15, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 91
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_6

    :cond_23
    move-object v15, v2

    move-object v13, v3

    move-object v7, v4

    move-object v14, v5

    :cond_24
    :goto_6
    const/16 v0, 0x19

    .line 92
    invoke-virtual {v15, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v7, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    const/16 v0, 0x2e

    .line 93
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 94
    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid class loader name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v10

    .line 96
    :cond_25
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    aget-object v0, v14, v10

    if-eqz v0, :cond_26

    const/16 v0, -0x6c

    .line 98
    iput v0, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v10

    .line 99
    :cond_26
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 100
    new-instance v5, Landroid/content/pm/PackageParser$CachedComponentArgs;

    invoke-direct {v5, v11}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser$1;)V

    move-object v11, v8

    .line 101
    :goto_7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v12, :cond_43

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 102
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v15, :cond_43

    :cond_27
    if-eq v0, v1, :cond_42

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    goto :goto_7

    .line 103
    :cond_28
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v12, 0x0

    .line 105
    iget-boolean v11, v11, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v16, v5

    move-object/from16 v5, p5

    move-object/from16 v6, v16

    move-object/from16 v22, v7

    move v7, v12

    move-object v12, v8

    move v8, v11

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    if-nez v0, :cond_29

    const/16 v0, -0x6c

    .line 106
    iput v0, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v10

    .line 107
    :cond_29
    iget-object v1, v12, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_2a
    move-object/from16 v16, v5

    move-object/from16 v22, v7

    move-object v12, v8

    const-string/jumbo v1, "receiver"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, v16

    .line 109
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    if-nez v0, :cond_2b

    const/16 v0, -0x6c

    .line 110
    iput v0, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v10

    .line 111
    :cond_2b
    iget-object v1, v12, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v8, v12

    goto/16 :goto_b

    :cond_2c
    const-string/jumbo v1, "service"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, v16

    .line 113
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v0

    if-nez v0, :cond_2d

    const/16 v0, -0x6c

    .line 114
    iput v0, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v10

    .line 115
    :cond_2d
    iget-object v1, v11, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    goto/16 :goto_a

    :cond_2e
    const-string/jumbo v1, "provider"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, v16

    .line 117
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v0

    if-nez v0, :cond_2f

    const/16 v0, -0x6c

    .line 118
    iput v0, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v10

    .line 119
    :cond_2f
    iget-object v1, v11, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_30
    const-string v1, "activity-alias"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, v16

    .line 121
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    if-nez v0, :cond_31

    const/16 v0, -0x6c

    .line 122
    iput v0, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v10

    .line 123
    :cond_31
    iget-object v1, v11, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 124
    :cond_32
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 125
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v9, v1, v2, v0, v14}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v11, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v0, :cond_33

    const/16 v0, -0x6c

    .line 126
    iput v0, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v10

    :cond_33
    :goto_a
    move-object v8, v11

    :goto_b
    move-object v11, v8

    move-object/from16 v5, v22

    goto/16 :goto_e

    :cond_34
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string/jumbo v3, "static-library"

    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 128
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 130
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_38

    if-gez v4, :cond_35

    goto :goto_c

    .line 132
    :cond_35
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v0, :cond_36

    const-string/jumbo v0, "sharedUserId not allowed in static shared library"

    .line 133
    aput-object v0, v14, v10

    const/16 v0, -0x6b

    .line 134
    iput v0, v9, Landroid/content/pm/PackageParser;->mParseError:I

    .line 135
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return v10

    .line 136
    :cond_36
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v0, :cond_37

    const-string v0, "Multiple static-shared libs for package "

    .line 137
    invoke-static {v0, v13}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    aput-object v0, v14, v10

    const/16 v0, -0x6c

    .line 139
    iput v0, v9, Landroid/content/pm/PackageParser;->mParseError:I

    .line 140
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return v10

    .line 141
    :cond_37
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 142
    iput v4, v11, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:I

    move-object/from16 v5, v22

    .line 143
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 144
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_e

    .line 145
    :cond_38
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad static-library declaration name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v10

    const/16 v0, -0x6c

    .line 146
    iput v0, v9, Landroid/content/pm/PackageParser;->mParseError:I

    .line 147
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return v10

    :cond_39
    move-object/from16 v5, v22

    const-string/jumbo v3, "library"

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 149
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_3a

    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v3, v11, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 154
    iget-object v3, v11, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v11, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 155
    :cond_3a
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_e

    :cond_3b
    const-string/jumbo v3, "uses-static-library"

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 157
    invoke-direct {v9, v11, v1, v2, v14}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    return v10

    :cond_3c
    const-string/jumbo v3, "uses-library"

    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 159
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 161
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 162
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_3e

    .line 163
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_3d

    .line 164
    iget-object v3, v11, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v11, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    goto :goto_d

    .line 165
    :cond_3d
    iget-object v3, v11, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v11, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 166
    :cond_3e
    :goto_d
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_e

    :cond_3f
    const-string/jumbo v3, "uses-package"

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 168
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_e

    :cond_40
    const-string v3, "Unknown element under <application>: "

    const-string v4, " at "

    .line 169
    invoke-static {v3, v0, v4}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    iget-object v3, v9, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageParser"

    .line 172
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_41
    :goto_e
    const/4 v0, 0x1

    move-object v6, v2

    move-object v7, v5

    move-object v8, v12

    goto :goto_f

    :cond_42
    move-object/from16 v1, p2

    move-object/from16 v16, v5

    move-object v2, v6

    move-object v5, v7

    move-object v12, v8

    const/4 v0, 0x1

    :goto_f
    move-object/from16 v5, v16

    move v12, v0

    goto/16 :goto_7

    :cond_43
    move-object v12, v8

    .line 174
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    .line 175
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageBackwardCompatibility;->modifySharedLibraries(Landroid/content/pm/PackageParser$Package;)V

    .line 176
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 177
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_10

    .line 178
    :cond_44
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :goto_10
    const/4 v0, 0x1

    return v0
.end method

.method private parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 8

    .line 1
    const-string v0, "Failed to parse base APK: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 9
    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    iget-boolean v3, v2, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p2, Landroid/content/pm/PackageParser$PackageParserException;

    .line 18
    .line 19
    const-string v0, "Not a coreApp: "

    .line 20
    .line 21
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->i(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/16 v0, -0x6c

    .line 26
    .line 27
    invoke-direct {p2, v0, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p2

    .line 31
    :cond_1
    :goto_0
    iget-boolean v3, v2, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iget-object v3, v2, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    :try_start_0
    invoke-static {v2}, Landroid/content/pm/split/SplitDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v4, Landroid/content/pm/split/SplitAssetDependencyLoader;

    .line 48
    .line 49
    invoke-direct {v4, v2, v3, p2}, Landroid/content/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    :try_end_0
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Landroid/content/pm/PackageParser$PackageParserException;

    .line 55
    .line 56
    const/16 v0, -0x65

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p2, v0, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p2

    .line 66
    :cond_2
    new-instance v4, Landroid/content/pm/split/DefaultSplitAssetLoader;

    .line 67
    .line 68
    invoke-direct {v4, v2, p2}, Landroid/content/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    :goto_1
    :try_start_1
    invoke-interface {v4}, Landroid/content/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    new-instance v6, Ljava/io/File;

    .line 77
    .line 78
    iget-object v7, v2, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v6, v5, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_4

    .line 88
    .line 89
    iget-object v0, v2, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    iget-object v0, v2, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    .line 98
    .line 99
    array-length v6, v0

    .line 100
    iput-object v0, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 101
    .line 102
    iget-object v7, v2, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    .line 103
    .line 104
    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 105
    .line 106
    iget-object v7, v2, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    .line 107
    .line 108
    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 109
    .line 110
    new-array v7, v6, [I

    .line 111
    .line 112
    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 113
    .line 114
    new-array v7, v6, [I

    .line 115
    .line 116
    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 117
    .line 118
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 119
    .line 120
    iput-object v0, v7, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 121
    .line 122
    iput-object v3, v7, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 123
    .line 124
    new-array v0, v6, [Ljava/lang/String;

    .line 125
    .line 126
    iput-object v0, v7, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 127
    .line 128
    :goto_2
    if-ge v1, v6, :cond_3

    .line 129
    .line 130
    invoke-interface {v4, v1}, Landroid/content/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {p0, v5, v1, v0, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    .line 135
    .line 136
    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-boolean p1, v2, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    .line 148
    .line 149
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .line 151
    .line 152
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 153
    .line 154
    .line 155
    return-object v5

    .line 156
    :cond_4
    :try_start_2
    new-instance p1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 157
    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    const/16 v0, -0x64

    .line 171
    .line 172
    invoke-direct {p1, v0, p2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :catchall_0
    move-exception p1

    .line 177
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 178
    .line 179
    .line 180
    throw p1
.end method

.method public static parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 19

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_9

    .line 10
    .line 11
    const-string/jumbo v1, "parseApkLite"

    .line 12
    .line 13
    .line 14
    const-wide/32 v2, 0x40000

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    .line 24
    .line 25
    array-length v4, v0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v8, v5

    .line 30
    :goto_0
    const/16 v9, -0x65

    .line 31
    .line 32
    if-ge v6, v4, :cond_5

    .line 33
    .line 34
    aget-object v10, v0, v6

    .line 35
    .line 36
    invoke-static {v10}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    if-eqz v11, :cond_4

    .line 41
    .line 42
    move/from16 v11, p1

    .line 43
    .line 44
    invoke-static {v10, v11}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    if-nez v8, :cond_0

    .line 49
    .line 50
    iget-object v8, v12, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    iget v7, v12, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    iget-object v13, v12, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    const-string v14, "; expected "

    .line 62
    .line 63
    const-string v15, " in "

    .line 64
    .line 65
    if-eqz v13, :cond_3

    .line 66
    .line 67
    iget v13, v12, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 68
    .line 69
    if-ne v7, v13, :cond_2

    .line 70
    .line 71
    :goto_1
    iget-object v13, v12, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    if-nez v13, :cond_1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, "Split name "

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v12, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, " defined more than once; most recent was "

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-direct {v0, v9, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :cond_2
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v2, "Inconsistent version "

    .line 115
    .line 116
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget v2, v12, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-direct {v0, v9, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v2, "Inconsistent package "

    .line 149
    .line 150
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v2, v12, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-direct {v0, v9, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :cond_4
    move/from16 v11, p1

    .line 179
    .line 180
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    move-object v12, v0

    .line 192
    check-cast v12, Landroid/content/pm/PackageParser$ApkLite;

    .line 193
    .line 194
    if-eqz v12, :cond_8

    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-lez v0, :cond_7

    .line 201
    .line 202
    new-array v2, v0, [Ljava/lang/String;

    .line 203
    .line 204
    new-array v5, v0, [Z

    .line 205
    .line 206
    new-array v3, v0, [Ljava/lang/String;

    .line 207
    .line 208
    new-array v4, v0, [Ljava/lang/String;

    .line 209
    .line 210
    new-array v6, v0, [Ljava/lang/String;

    .line 211
    .line 212
    new-array v7, v0, [I

    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-interface {v8, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, [Ljava/lang/String;

    .line 223
    .line 224
    sget-object v8, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    .line 225
    .line 226
    invoke-static {v2, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 227
    .line 228
    .line 229
    const/4 v8, 0x0

    .line 230
    :goto_3
    if-ge v8, v0, :cond_6

    .line 231
    .line 232
    aget-object v9, v2, v8

    .line 233
    .line 234
    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    check-cast v9, Landroid/content/pm/PackageParser$ApkLite;

    .line 239
    .line 240
    iget-object v10, v9, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    .line 241
    .line 242
    aput-object v10, v3, v8

    .line 243
    .line 244
    iget-boolean v10, v9, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    .line 245
    .line 246
    aput-boolean v10, v5, v8

    .line 247
    .line 248
    iget-object v10, v9, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    .line 249
    .line 250
    aput-object v10, v4, v8

    .line 251
    .line 252
    iget-object v10, v9, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    .line 253
    .line 254
    aput-object v10, v6, v8

    .line 255
    .line 256
    iget v9, v9, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    .line 257
    .line 258
    aput v9, v7, v8

    .line 259
    .line 260
    add-int/lit8 v8, v8, 0x1

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_6
    move-object v13, v2

    .line 264
    move-object v15, v3

    .line 265
    move-object/from16 v16, v4

    .line 266
    .line 267
    move-object v14, v5

    .line 268
    move-object/from16 v17, v6

    .line 269
    .line 270
    move-object/from16 v18, v7

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_7
    move-object v13, v5

    .line 274
    move-object v14, v13

    .line 275
    move-object v15, v14

    .line 276
    move-object/from16 v16, v15

    .line 277
    .line 278
    move-object/from16 v17, v16

    .line 279
    .line 280
    move-object/from16 v18, v17

    .line 281
    .line 282
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    .line 287
    .line 288
    move-object v10, v0

    .line 289
    invoke-direct/range {v10 .. v18}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 290
    .line 291
    .line 292
    return-object v0

    .line 293
    :cond_8
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 294
    .line 295
    const-string v1, "Missing base APK in "

    .line 296
    .line 297
    move-object/from16 v2, p0

    .line 298
    .line 299
    invoke-static {v1, v2}, Landroid/accessibilityservice/c;->i(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-direct {v0, v9, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :cond_9
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 308
    .line 309
    const/16 v1, -0x64

    .line 310
    .line 311
    const-string v2, "No packages found in split"

    .line 312
    .line 313
    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v0
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 11

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    .line 2
    .line 3
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x1

    .line 16
    const/16 v8, 0x8

    .line 17
    .line 18
    const/4 v9, 0x6

    .line 19
    const/4 v10, 0x7

    .line 20
    move-object v2, v1

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p4

    .line 23
    invoke-direct/range {v2 .. v10}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 27
    .line 28
    const-string v2, "<instrumentation>"

    .line 29
    .line 30
    iput-object v2, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 33
    .line 34
    iput-object v0, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 35
    .line 36
    new-instance v1, Landroid/content/pm/PackageParser$Instrumentation;

    .line 37
    .line 38
    iget-object v2, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 39
    .line 40
    new-instance v3, Landroid/content/pm/InstrumentationInfo;

    .line 41
    .line 42
    invoke-direct {v3}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    aget-object v3, p4, v2

    .line 50
    .line 51
    const/16 v8, -0x6c

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    .line 58
    .line 59
    iput v8, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 60
    .line 61
    return-object v9

    .line 62
    :cond_1
    const/4 v3, 0x3

    .line 63
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v4, v1, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move-object v3, v9

    .line 77
    :goto_0
    iput-object v3, v4, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 78
    .line 79
    const/16 v3, 0x9

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v4, v1, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    move-object v3, v9

    .line 95
    :goto_1
    iput-object v3, v4, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v3, v1, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 98
    .line 99
    const/4 v4, 0x4

    .line 100
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    iput-boolean v4, v3, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 105
    .line 106
    iget-object v3, v1, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 107
    .line 108
    const/4 v4, 0x5

    .line 109
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    iput-boolean v4, v3, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    .line 117
    .line 118
    iget-object v0, v1, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 119
    .line 120
    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 121
    .line 122
    if-nez v0, :cond_4

    .line 123
    .line 124
    const-string p1, "<instrumentation> does not specify targetPackage"

    .line 125
    .line 126
    aput-object p1, p4, v2

    .line 127
    .line 128
    iput v8, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 129
    .line 130
    return-object v9

    .line 131
    :cond_4
    const-string v5, "<instrumentation>"

    .line 132
    .line 133
    move-object v2, p0

    .line 134
    move-object v3, p2

    .line 135
    move-object v4, p3

    .line 136
    move-object v6, v1

    .line 137
    move-object v7, p4

    .line 138
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-nez p2, :cond_5

    .line 143
    .line 144
    iput v8, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 145
    .line 146
    return-object v9

    .line 147
    :cond_5
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    return-object v1
.end method

.method private parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    .line 8
    .line 9
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    .line 29
    .line 30
    iput v7, v2, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    .line 31
    .line 32
    if-nez v7, :cond_0

    .line 33
    .line 34
    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iput-object v6, v2, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 39
    .line 40
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const v7, 0x11200d6

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const/4 v7, 0x6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    invoke-virtual {v3, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v6, v5

    .line 60
    :goto_0
    const/4 v8, 0x1

    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    iput v6, v2, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v3, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    iput v6, v2, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 71
    .line 72
    :goto_1
    const/4 v6, 0x3

    .line 73
    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    iput v9, v2, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 78
    .line 79
    const/4 v9, 0x4

    .line 80
    invoke-virtual {v3, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    iput v10, v2, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 85
    .line 86
    const/4 v10, 0x5

    .line 87
    if-eqz p4, :cond_3

    .line 88
    .line 89
    invoke-virtual {v3, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->setAutoVerify(Z)V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    .line 98
    .line 99
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eq v11, v8, :cond_1b

    .line 108
    .line 109
    if-ne v11, v6, :cond_4

    .line 110
    .line 111
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    if-le v12, v3, :cond_1b

    .line 116
    .line 117
    :cond_4
    if-eq v11, v6, :cond_1a

    .line 118
    .line 119
    if-ne v11, v9, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    const-string v12, "action"

    .line 127
    .line 128
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    const-string v13, ""

    .line 133
    .line 134
    const-string v14, "No value supplied for <android:name>"

    .line 135
    .line 136
    const-string/jumbo v15, "name"

    .line 137
    .line 138
    .line 139
    const-string/jumbo v7, "http://schemas.android.com/apk/res/android"

    .line 140
    .line 141
    .line 142
    if-eqz v12, :cond_8

    .line 143
    .line 144
    invoke-interface {v1, v7, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    if-eqz v7, :cond_7

    .line 149
    .line 150
    if-ne v7, v13, :cond_6

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :goto_3
    const/4 v11, 0x6

    .line 160
    :goto_4
    move-object/from16 v12, p0

    .line 161
    .line 162
    goto/16 :goto_8

    .line 163
    .line 164
    :cond_7
    :goto_5
    aput-object v14, p6, v5

    .line 165
    .line 166
    return v5

    .line 167
    :cond_8
    const-string v12, "category"

    .line 168
    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    if-eqz v12, :cond_b

    .line 174
    .line 175
    invoke-interface {v1, v7, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    if-eqz v7, :cond_a

    .line 180
    .line 181
    if-ne v7, v13, :cond_9

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_a
    :goto_6
    aput-object v14, p6, v5

    .line 192
    .line 193
    return v5

    .line 194
    :cond_b
    const-string v7, "data"

    .line 195
    .line 196
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-eqz v7, :cond_19

    .line 201
    .line 202
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    .line 203
    .line 204
    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v7, v5, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    if-eqz v11, :cond_c

    .line 213
    .line 214
    :try_start_0
    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .line 216
    .line 217
    goto :goto_7

    .line 218
    :catch_0
    move-exception v0

    .line 219
    move-object v1, v0

    .line 220
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    aput-object v0, p6, v5

    .line 225
    .line 226
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    .line 228
    .line 229
    return v5

    .line 230
    :cond_c
    :goto_7
    invoke-virtual {v7, v8, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    if-eqz v11, :cond_d

    .line 235
    .line 236
    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_d
    const/4 v11, 0x7

    .line 240
    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    if-eqz v11, :cond_e

    .line 245
    .line 246
    invoke-virtual {v2, v11, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 247
    .line 248
    .line 249
    :cond_e
    const/16 v11, 0x8

    .line 250
    .line 251
    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    if-eqz v11, :cond_f

    .line 256
    .line 257
    invoke-virtual {v2, v11, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 258
    .line 259
    .line 260
    :cond_f
    const/16 v11, 0x9

    .line 261
    .line 262
    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    if-eqz v11, :cond_11

    .line 267
    .line 268
    if-nez p3, :cond_10

    .line 269
    .line 270
    const-string/jumbo v0, "sspPattern not allowed here; ssp must be literal"

    .line 271
    .line 272
    .line 273
    aput-object v0, p6, v5

    .line 274
    .line 275
    return v5

    .line 276
    :cond_10
    invoke-virtual {v2, v11, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    :cond_11
    invoke-virtual {v7, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    invoke-virtual {v7, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    if-eqz v11, :cond_12

    .line 288
    .line 289
    invoke-virtual {v2, v11, v12}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_12
    invoke-virtual {v7, v9, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    if-eqz v11, :cond_13

    .line 297
    .line 298
    invoke-virtual {v2, v11, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 299
    .line 300
    .line 301
    :cond_13
    invoke-virtual {v7, v10, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v11

    .line 305
    if-eqz v11, :cond_14

    .line 306
    .line 307
    invoke-virtual {v2, v11, v8}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    :cond_14
    const/4 v11, 0x6

    .line 311
    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    if-eqz v12, :cond_16

    .line 316
    .line 317
    if-nez p3, :cond_15

    .line 318
    .line 319
    const-string/jumbo v0, "pathPattern not allowed here; path must be literal"

    .line 320
    .line 321
    .line 322
    aput-object v0, p6, v5

    .line 323
    .line 324
    return v5

    .line 325
    :cond_15
    invoke-virtual {v2, v12, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 326
    .line 327
    .line 328
    :cond_16
    const/16 v12, 0xa

    .line 329
    .line 330
    invoke-virtual {v7, v12, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v12

    .line 334
    if-eqz v12, :cond_18

    .line 335
    .line 336
    if-nez p3, :cond_17

    .line 337
    .line 338
    const-string/jumbo v0, "pathAdvancedPattern not allowed here; path must be literal"

    .line 339
    .line 340
    .line 341
    aput-object v0, p6, v5

    .line 342
    .line 343
    return v5

    .line 344
    :cond_17
    invoke-virtual {v2, v12, v6}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 345
    .line 346
    .line 347
    :cond_18
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 348
    .line 349
    .line 350
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_4

    .line 354
    .line 355
    :cond_19
    const/4 v11, 0x6

    .line 356
    new-instance v7, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v12, "Unknown element under <intent-filter>: "

    .line 359
    .line 360
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v12

    .line 367
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v12, " at "

    .line 371
    .line 372
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    move-object/from16 v12, p0

    .line 376
    .line 377
    iget-object v13, v12, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v13, " "

    .line 383
    .line 384
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v13

    .line 391
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    const-string v13, "PackageParser"

    .line 399
    .line 400
    invoke-static {v13, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 404
    .line 405
    .line 406
    :goto_8
    move v7, v11

    .line 407
    goto/16 :goto_2

    .line 408
    .line 409
    :cond_1a
    move-object/from16 v12, p0

    .line 410
    .line 411
    goto/16 :goto_2

    .line 412
    .line 413
    :cond_1b
    move-object/from16 v12, p0

    .line 414
    .line 415
    const-string v0, "android.intent.category.DEFAULT"

    .line 416
    .line 417
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    iput-boolean v0, v2, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 422
    .line 423
    return v8
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    new-instance v5, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v6, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v7, Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v8, Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 v9, -0x1

    .line 34
    const/4 v10, 0x0

    .line 35
    :cond_0
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    const/4 v12, 0x1

    .line 40
    const-string v13, "PackageParser"

    .line 41
    .line 42
    const/4 v14, 0x0

    .line 43
    if-eq v11, v12, :cond_d

    .line 44
    .line 45
    const/4 v12, 0x3

    .line 46
    if-ne v11, v12, :cond_1

    .line 47
    .line 48
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 49
    .line 50
    .line 51
    move-result v15

    .line 52
    if-le v15, v4, :cond_d

    .line 53
    .line 54
    :cond_1
    if-ne v11, v12, :cond_2

    .line 55
    .line 56
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-ne v11, v9, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    const-string/jumbo v12, "key-set"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    const-string v15, "Improperly nested \'key-set\' tag at "

    .line 75
    .line 76
    if-eqz v12, :cond_4

    .line 77
    .line 78
    if-eqz v10, :cond_3

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    aput-object v1, p4, v14

    .line 97
    .line 98
    const/16 v1, -0x6c

    .line 99
    .line 100
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 101
    .line 102
    return v14

    .line 103
    :cond_3
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    .line 104
    .line 105
    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    new-instance v11, Landroid/util/ArraySet;

    .line 114
    .line 115
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    .line 127
    .line 128
    move v9, v11

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    const-string/jumbo v12, "public-key"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    if-eqz v12, :cond_b

    .line 138
    .line 139
    if-nez v10, :cond_5

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    aput-object v1, p4, v14

    .line 158
    .line 159
    const/16 v1, -0x6c

    .line 160
    .line 161
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 162
    .line 163
    return v14

    .line 164
    :cond_5
    sget-object v11, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    .line 165
    .line 166
    invoke-virtual {v2, v3, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    const/4 v15, 0x1

    .line 175
    invoke-virtual {v11, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    if-nez v15, :cond_6

    .line 180
    .line 181
    invoke-virtual {v5, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v16

    .line 185
    if-nez v16, :cond_6

    .line 186
    .line 187
    const-string v1, "\'public-key\' "

    .line 188
    .line 189
    const-string v2, " must define a public-key value on first use at "

    .line 190
    .line 191
    invoke-static {v1, v12, v2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    aput-object v1, p4, v14

    .line 207
    .line 208
    const/16 v1, -0x6c

    .line 209
    .line 210
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 211
    .line 212
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    .line 214
    .line 215
    return v14

    .line 216
    :cond_6
    if-eqz v15, :cond_a

    .line 217
    .line 218
    invoke-static {v15}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    .line 219
    .line 220
    .line 221
    move-result-object v15

    .line 222
    if-nez v15, :cond_7

    .line 223
    .line 224
    new-instance v12, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v14, "No recognized valid key in \'public-key\' tag at "

    .line 227
    .line 228
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v14

    .line 235
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v14, " key-set "

    .line 239
    .line 240
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v14, " will not be added to the package\'s defined key-sets."

    .line 247
    .line 248
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_7
    invoke-virtual {v5, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v13

    .line 273
    if-eqz v13, :cond_9

    .line 274
    .line 275
    invoke-virtual {v5, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v13

    .line 279
    check-cast v13, Ljava/security/PublicKey;

    .line 280
    .line 281
    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v13

    .line 285
    if-eqz v13, :cond_8

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_8
    const-string v1, "Value of \'public-key\' "

    .line 289
    .line 290
    const-string v2, " conflicts with previously defined value at "

    .line 291
    .line 292
    invoke-static {v1, v12, v2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    aput-object v1, p4, v14

    .line 308
    .line 309
    const/16 v1, -0x6c

    .line 310
    .line 311
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 312
    .line 313
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    .line 315
    .line 316
    return v14

    .line 317
    :cond_9
    :goto_2
    invoke-virtual {v5, v12, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    :cond_a
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v13

    .line 324
    check-cast v13, Landroid/util/ArraySet;

    .line 325
    .line 326
    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 330
    .line 331
    .line 332
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :cond_b
    const-string/jumbo v12, "upgrade-key-set"

    .line 338
    .line 339
    .line 340
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v11

    .line 344
    if-eqz v11, :cond_c

    .line 345
    .line 346
    sget-object v11, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    .line 347
    .line 348
    invoke-virtual {v2, v3, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 349
    .line 350
    .line 351
    move-result-object v11

    .line 352
    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v12

    .line 356
    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 360
    .line 361
    .line 362
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    const-string v12, "Unknown element under <key-sets>: "

    .line 370
    .line 371
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v12

    .line 378
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v12, " at "

    .line 382
    .line 383
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget-object v12, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v12, " "

    .line 392
    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v12

    .line 400
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v11

    .line 407
    invoke-static {v13, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :cond_d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    const-string v3, "Package"

    .line 428
    .line 429
    if-eqz v2, :cond_e

    .line 430
    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 437
    .line 438
    const-string v3, " AndroidManifext.xml \'key-set\' and \'public-key\' names must be distinct."

    .line 439
    .line 440
    invoke-static {v2, v1, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    aput-object v1, p4, v14

    .line 445
    .line 446
    const/16 v1, -0x6c

    .line 447
    .line 448
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 449
    .line 450
    return v14

    .line 451
    :cond_e
    new-instance v2, Landroid/util/ArrayMap;

    .line 452
    .line 453
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 454
    .line 455
    .line 456
    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 457
    .line 458
    invoke-virtual {v7}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    :cond_f
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    if-eqz v4, :cond_12

    .line 471
    .line 472
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    check-cast v4, Ljava/util/Map$Entry;

    .line 477
    .line 478
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    check-cast v7, Ljava/lang/String;

    .line 483
    .line 484
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v9

    .line 488
    check-cast v9, Landroid/util/ArraySet;

    .line 489
    .line 490
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 491
    .line 492
    .line 493
    move-result v9

    .line 494
    const-string v10, " AndroidManifext.xml \'key-set\' "

    .line 495
    .line 496
    if-nez v9, :cond_10

    .line 497
    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v7, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    .line 515
    .line 516
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .line 525
    .line 526
    goto :goto_3

    .line 527
    :cond_10
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v9

    .line 531
    if-eqz v9, :cond_11

    .line 532
    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 539
    .line 540
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    const-string v7, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    .line 550
    .line 551
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .line 560
    .line 561
    goto :goto_3

    .line 562
    :cond_11
    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 563
    .line 564
    new-instance v10, Landroid/util/ArraySet;

    .line 565
    .line 566
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v9, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    check-cast v4, Landroid/util/ArraySet;

    .line 577
    .line 578
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 583
    .line 584
    .line 585
    move-result v9

    .line 586
    if-eqz v9, :cond_f

    .line 587
    .line 588
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v9

    .line 592
    check-cast v9, Ljava/lang/String;

    .line 593
    .line 594
    iget-object v10, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 595
    .line 596
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v10

    .line 600
    check-cast v10, Landroid/util/ArraySet;

    .line 601
    .line 602
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v9

    .line 606
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    goto :goto_4

    .line 610
    :cond_12
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 611
    .line 612
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    invoke-interface {v2, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-eqz v2, :cond_13

    .line 621
    .line 622
    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 623
    .line 624
    const/4 v1, 0x1

    .line 625
    return v1

    .line 626
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 632
    .line 633
    const-string v3, " AndroidManifext.xml does not define all \'upgrade-key-set\'s ."

    .line 634
    .line 635
    invoke-static {v2, v1, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    aput-object v1, p4, v14

    .line 640
    .line 641
    const/16 v1, -0x6c

    .line 642
    .line 643
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 644
    .line 645
    return v14
.end method

.method private parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .locals 16

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x5

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, -0x1

    .line 19
    const/high16 v6, -0x40800000    # -1.0f

    .line 20
    .line 21
    const/4 v7, 0x6

    .line 22
    if-ne v2, v7, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1, v4, v4, v6}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    move v10, v1

    .line 29
    move v9, v5

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    if-ne v2, v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    move v9, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v9, v5

    .line 40
    :goto_0
    move v10, v6

    .line 41
    :goto_1
    const/4 v1, 0x4

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ne v2, v7, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, v1, v4, v4, v6}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    if-ne v2, v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    move v11, v1

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    :goto_2
    move v11, v5

    .line 62
    :goto_3
    move v12, v6

    .line 63
    const/4 v1, 0x0

    .line 64
    const/16 v2, 0x11

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    const/4 v1, 0x2

    .line 75
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 76
    .line 77
    .line 78
    move-result v15

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    .line 81
    .line 82
    move-object/from16 v0, p3

    .line 83
    .line 84
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 85
    .line 86
    new-instance v1, Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 87
    .line 88
    move-object v8, v1

    .line 89
    invoke-direct/range {v8 .. v15}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    .line 90
    .line 91
    .line 92
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 93
    .line 94
    return-void
.end method

.method private parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    new-instance p3, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const-string p2, "<meta-data> requires an android:name attribute"

    .line 23
    .line 24
    aput-object p2, p4, v0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v3, 0x2

    .line 35
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {p3, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_2
    const/4 v3, 0x1

    .line 51
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-eqz v4, :cond_9

    .line 56
    .line 57
    iget p4, v4, Landroid/util/TypedValue;->type:I

    .line 58
    .line 59
    const/4 v5, 0x3

    .line 60
    if-ne p4, v5, :cond_4

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    if-eqz p4, :cond_3

    .line 67
    .line 68
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :cond_3
    invoke-virtual {p3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const/16 v2, 0x12

    .line 77
    .line 78
    if-ne p4, v2, :cond_6

    .line 79
    .line 80
    iget p4, v4, Landroid/util/TypedValue;->data:I

    .line 81
    .line 82
    if-eqz p4, :cond_5

    .line 83
    .line 84
    move v0, v3

    .line 85
    :cond_5
    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    const/16 v0, 0x10

    .line 90
    .line 91
    if-lt p4, v0, :cond_7

    .line 92
    .line 93
    const/16 v0, 0x1f

    .line 94
    .line 95
    if-gt p4, v0, :cond_7

    .line 96
    .line 97
    iget p4, v4, Landroid/util/TypedValue;->data:I

    .line 98
    .line 99
    invoke-virtual {p3, v1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_7
    const/4 v0, 0x4

    .line 104
    if-ne p4, v0, :cond_8

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    .line 107
    .line 108
    .line 109
    move-result p4

    .line 110
    invoke-virtual {p3, v1, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_8
    new-instance p4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v0, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    .line 117
    .line 118
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, " at "

    .line 129
    .line 130
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, " "

    .line 139
    .line 140
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p4

    .line 154
    const-string v0, "PackageParser"

    .line 155
    .line 156
    invoke-static {v0, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_9
    const-string p3, "<meta-data> requires an android:value or android:resource attribute"

    .line 161
    .line 162
    aput-object p3, p4, v0

    .line 163
    .line 164
    move-object p3, v2

    .line 165
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    .line 167
    .line 168
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 169
    .line 170
    .line 171
    return-object p3
.end method

.method private static parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 12

    .line 1
    const-string/jumbo v0, "parseApkLite"

    .line 2
    .line 3
    .line 4
    const-wide/32 v1, 0x40000

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Landroid/content/pm/PackageParser$PackageLite;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    move-object v3, p0

    .line 30
    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method private static parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    const-string p0, " does not contain any attributes"

    .line 5
    .line 6
    invoke-static {p3, p0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    aput-object p0, p2, v0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p4, p6, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p6

    .line 17
    if-nez p6, :cond_1

    .line 18
    .line 19
    if-eqz p5, :cond_2

    .line 20
    .line 21
    const-string p0, " does not specify android:name"

    .line 22
    .line 23
    invoke-static {p3, p0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    aput-object p0, p2, v0

    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    iget-object p3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    iget-object p3, p3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p3, p6, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const p3, 0x11200d6

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p4, p9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move p2, v0

    .line 62
    :goto_0
    const/4 p3, 0x0

    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    iput p2, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 66
    .line 67
    iput-object p3, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p4, p8, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_5

    .line 75
    .line 76
    iput p2, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 77
    .line 78
    iput-object p3, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 79
    .line 80
    :cond_5
    :goto_1
    invoke-virtual {p4, p10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_6

    .line 85
    .line 86
    iput p2, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 87
    .line 88
    :cond_6
    invoke-virtual {p4, p11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_7

    .line 93
    .line 94
    iput p2, p1, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 95
    .line 96
    :cond_7
    invoke-virtual {p4, p7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    if-eqz p2, :cond_8

    .line 101
    .line 102
    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    .line 103
    .line 104
    iput p3, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 105
    .line 106
    if-nez p3, :cond_8

    .line 107
    .line 108
    invoke-virtual {p2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    iput-object p2, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 113
    .line 114
    :cond_8
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 115
    .line 116
    iput-object p0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 117
    .line 118
    const/4 p0, 0x1

    .line 119
    return p0
.end method

.method public static parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v3, -0x6c

    .line 13
    .line 14
    if-ne v0, v1, :cond_8

    .line 15
    .line 16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string/jumbo v0, "manifest"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_7

    .line 28
    .line 29
    const-string/jumbo p0, "package"

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-interface {p1, v0, p0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v1, "android"

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/16 v3, -0x6a

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    invoke-static {p0, v2, v2}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 55
    .line 56
    const-string p1, "Invalid manifest package: "

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, v3, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_2
    :goto_1
    const-string/jumbo v1, "split"

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 83
    invoke-static {p1, v0, v0}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 91
    .line 92
    const-string p1, "Invalid manifest split: "

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p0, v3, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_5
    :goto_2
    move-object v0, p1

    .line 103
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :cond_6
    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :cond_7
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 119
    .line 120
    const-string p1, "No <manifest> tag"

    .line 121
    .line 122
    invoke-direct {p0, v3, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :cond_8
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 127
    .line 128
    const-string p1, "No start tag found"

    .line 129
    .line 130
    invoke-direct {p0, v3, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    move-object/from16 v2, p3

    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v4, Landroid/content/pm/PackageParser$Permission;

    .line 16
    .line 17
    invoke-direct {v4, v5}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 18
    .line 19
    .line 20
    iget-object v8, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 21
    .line 22
    const-string v10, "<permission>"

    .line 23
    .line 24
    const/4 v12, 0x1

    .line 25
    const/4 v13, 0x2

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x1

    .line 28
    const/16 v16, 0x9

    .line 29
    .line 30
    const/16 v17, 0x6

    .line 31
    .line 32
    const/16 v18, 0x8

    .line 33
    .line 34
    move-object/from16 v7, p1

    .line 35
    .line 36
    move-object/from16 v9, p4

    .line 37
    .line 38
    move-object v11, v0

    .line 39
    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/16 v7, -0x6c

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    .line 50
    .line 51
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 52
    .line 53
    return v8

    .line 54
    :cond_0
    iget-object v3, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 55
    .line 56
    const/4 v9, 0x4

    .line 57
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    iput-object v9, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 64
    .line 65
    iget-object v9, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v9, :cond_1

    .line 68
    .line 69
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    iput-object v9, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 74
    .line 75
    :cond_1
    iget-object v3, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 76
    .line 77
    const/4 v9, 0x5

    .line 78
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    iput v9, v3, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 83
    .line 84
    iget-object v3, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 85
    .line 86
    const/4 v9, 0x3

    .line 87
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    iput v9, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 92
    .line 93
    iget-object v3, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 94
    .line 95
    const/4 v9, 0x7

    .line 96
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    iput v9, v3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    .line 104
    .line 105
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 106
    .line 107
    iget v3, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 108
    .line 109
    const/4 v9, -0x1

    .line 110
    if-ne v3, v9, :cond_2

    .line 111
    .line 112
    const-string v0, "<permission> does not specify protectionLevel"

    .line 113
    .line 114
    aput-object v0, p4, v8

    .line 115
    .line 116
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 117
    .line 118
    return v8

    .line 119
    :cond_2
    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    iput v3, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 124
    .line 125
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 126
    .line 127
    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 128
    .line 129
    const v3, 0xfff0

    .line 130
    .line 131
    .line 132
    and-int/2addr v3, v0

    .line 133
    if-eqz v3, :cond_3

    .line 134
    .line 135
    and-int/lit16 v3, v0, 0x1000

    .line 136
    .line 137
    if-nez v3, :cond_3

    .line 138
    .line 139
    and-int/lit16 v3, v0, 0x2000

    .line 140
    .line 141
    if-nez v3, :cond_3

    .line 142
    .line 143
    and-int/lit8 v0, v0, 0xf

    .line 144
    .line 145
    const/4 v3, 0x2

    .line 146
    if-eq v0, v3, :cond_3

    .line 147
    .line 148
    const-string v0, "<permission>  protectionLevel specifies a non-instnat flag but is not based on signature type"

    .line 149
    .line 150
    aput-object v0, p4, v8

    .line 151
    .line 152
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 153
    .line 154
    return v8

    .line 155
    :cond_3
    const-string v3, "<permission>"

    .line 156
    .line 157
    move-object/from16 v0, p0

    .line 158
    .line 159
    move-object/from16 v1, p2

    .line 160
    .line 161
    move-object/from16 v2, p3

    .line 162
    .line 163
    move-object v9, v4

    .line 164
    move-object v10, v5

    .line 165
    move-object/from16 v5, p4

    .line 166
    .line 167
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_4

    .line 172
    .line 173
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 174
    .line 175
    return v8

    .line 176
    :cond_4
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    const/4 v0, 0x1

    .line 182
    return v0
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    new-instance v4, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 6
    .line 7
    invoke-direct {v4, v5}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    .line 11
    .line 12
    move-object/from16 v1, p3

    .line 13
    .line 14
    move-object/from16 v2, p4

    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v8, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 21
    .line 22
    const-string v10, "<permission-group>"

    .line 23
    .line 24
    const/4 v12, 0x1

    .line 25
    const/4 v13, 0x2

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x1

    .line 28
    const/16 v16, 0x8

    .line 29
    .line 30
    const/16 v17, 0x5

    .line 31
    .line 32
    const/16 v18, 0x7

    .line 33
    .line 34
    move-object/from16 v7, p1

    .line 35
    .line 36
    move-object/from16 v9, p5

    .line 37
    .line 38
    move-object v11, v0

    .line 39
    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/16 v7, -0x6c

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    .line 50
    .line 51
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 52
    .line 53
    return v8

    .line 54
    :cond_0
    iget-object v3, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 55
    .line 56
    const/4 v9, 0x4

    .line 57
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    iput v9, v3, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 62
    .line 63
    iget-object v3, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 64
    .line 65
    const/4 v9, 0x6

    .line 66
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    iput v9, v3, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 71
    .line 72
    iget-object v3, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 73
    .line 74
    const/4 v9, 0x3

    .line 75
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    iput v9, v3, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 80
    .line 81
    iget-object v3, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 82
    .line 83
    iget v9, v3, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 84
    .line 85
    const/4 v10, 0x1

    .line 86
    if-lez v9, :cond_1

    .line 87
    .line 88
    and-int/lit8 v9, p2, 0x1

    .line 89
    .line 90
    if-nez v9, :cond_1

    .line 91
    .line 92
    iput v8, v3, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 93
    .line 94
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    .line 96
    .line 97
    const-string v3, "<permission-group>"

    .line 98
    .line 99
    move-object/from16 v0, p0

    .line 100
    .line 101
    move-object/from16 v1, p3

    .line 102
    .line 103
    move-object/from16 v2, p4

    .line 104
    .line 105
    move-object v9, v4

    .line 106
    move-object v11, v5

    .line 107
    move-object/from16 v5, p5

    .line 108
    .line 109
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_2

    .line 114
    .line 115
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 116
    .line 117
    return v8

    .line 118
    :cond_2
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    return v10
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    new-instance v4, Landroid/content/pm/PackageParser$Permission;

    .line 6
    .line 7
    invoke-direct {v4, v5}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    .line 11
    .line 12
    move-object/from16 v1, p2

    .line 13
    .line 14
    move-object/from16 v2, p3

    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v8, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 21
    .line 22
    const-string v10, "<permission-tree>"

    .line 23
    .line 24
    const/4 v12, 0x1

    .line 25
    const/4 v13, 0x2

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x1

    .line 28
    const/16 v16, 0x5

    .line 29
    .line 30
    const/16 v17, 0x3

    .line 31
    .line 32
    const/16 v18, 0x4

    .line 33
    .line 34
    move-object/from16 v7, p1

    .line 35
    .line 36
    move-object/from16 v9, p4

    .line 37
    .line 38
    move-object v11, v0

    .line 39
    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/16 v7, -0x6c

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    .line 50
    .line 51
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 52
    .line 53
    return v8

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    .line 56
    .line 57
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 58
    .line 59
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 60
    .line 61
    const/16 v3, 0x2e

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-lez v0, :cond_1

    .line 68
    .line 69
    iget-object v9, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 70
    .line 71
    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    invoke-virtual {v9, v3, v0}, Ljava/lang/String;->indexOf(II)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    :cond_1
    if-gez v0, :cond_2

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v1, "<permission-tree> name has less than three segments: "

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 89
    .line 90
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    aput-object v0, p4, v8

    .line 100
    .line 101
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 102
    .line 103
    return v8

    .line 104
    :cond_2
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 105
    .line 106
    iput v8, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 107
    .line 108
    iput v8, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 109
    .line 110
    const/4 v9, 0x1

    .line 111
    iput-boolean v9, v4, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 112
    .line 113
    const-string v3, "<permission-tree>"

    .line 114
    .line 115
    move-object/from16 v0, p0

    .line 116
    .line 117
    move-object/from16 v1, p2

    .line 118
    .line 119
    move-object/from16 v2, p3

    .line 120
    .line 121
    move-object v10, v4

    .line 122
    move-object v11, v5

    .line 123
    move-object/from16 v5, p4

    .line 124
    .line 125
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_3

    .line 130
    .line 131
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 132
    .line 133
    return v8

    .line 134
    :cond_3
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    return v9
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move/from16 v0, p4

    .line 6
    .line 7
    move-object/from16 v1, p6

    .line 8
    .line 9
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    .line 10
    .line 11
    move-object/from16 v3, p2

    .line 12
    .line 13
    move-object/from16 v5, p3

    .line 14
    .line 15
    invoke-virtual {v3, v5, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v6, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    new-instance v6, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 24
    .line 25
    const/4 v11, 0x2

    .line 26
    const/4 v12, 0x0

    .line 27
    const/4 v13, 0x1

    .line 28
    const/16 v14, 0x13

    .line 29
    .line 30
    const/16 v15, 0xf

    .line 31
    .line 32
    const/16 v16, 0x11

    .line 33
    .line 34
    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 35
    .line 36
    const/16 v18, 0x8

    .line 37
    .line 38
    const/16 v19, 0xe

    .line 39
    .line 40
    const/16 v20, 0x6

    .line 41
    .line 42
    move-object v8, v6

    .line 43
    move-object/from16 v9, p1

    .line 44
    .line 45
    move-object/from16 v17, v10

    .line 46
    .line 47
    move-object/from16 v10, p5

    .line 48
    .line 49
    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    .line 50
    .line 51
    .line 52
    iput-object v6, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 53
    .line 54
    const-string v8, "<provider>"

    .line 55
    .line 56
    iput-object v8, v6, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 57
    .line 58
    :cond_0
    iget-object v6, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 59
    .line 60
    iput-object v2, v6, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 61
    .line 62
    iput v0, v6, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 63
    .line 64
    new-instance v8, Landroid/content/pm/PackageParser$Provider;

    .line 65
    .line 66
    iget-object v1, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 67
    .line 68
    new-instance v6, Landroid/content/pm/ProviderInfo;

    .line 69
    .line 70
    invoke-direct {v6}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-direct {v8, v1, v6}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    aget-object v6, p5, v1

    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    .line 84
    .line 85
    return-object v9

    .line 86
    :cond_1
    iget-object v6, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 87
    .line 88
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 89
    .line 90
    const/16 v10, 0x11

    .line 91
    .line 92
    const/4 v11, 0x1

    .line 93
    if-ge v6, v10, :cond_2

    .line 94
    .line 95
    move v6, v11

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    move v6, v1

    .line 98
    :goto_0
    iget-object v10, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 99
    .line 100
    const/4 v12, 0x7

    .line 101
    invoke-virtual {v2, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    iput-boolean v6, v10, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 106
    .line 107
    const/16 v6, 0xa

    .line 108
    .line 109
    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    iget-object v10, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 114
    .line 115
    const/16 v12, 0xb

    .line 116
    .line 117
    invoke-virtual {v2, v12, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    iput-boolean v12, v10, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 122
    .line 123
    const/4 v10, 0x3

    .line 124
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    const/4 v12, 0x4

    .line 129
    invoke-virtual {v2, v12, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    if-nez v12, :cond_3

    .line 134
    .line 135
    move-object v12, v10

    .line 136
    :cond_3
    if-nez v12, :cond_4

    .line 137
    .line 138
    iget-object v12, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 139
    .line 140
    iget-object v13, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 141
    .line 142
    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 143
    .line 144
    iput-object v13, v12, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    iget-object v13, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 148
    .line 149
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    if-lez v14, :cond_5

    .line 154
    .line 155
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    goto :goto_1

    .line 160
    :cond_5
    move-object v12, v9

    .line 161
    :goto_1
    iput-object v12, v13, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 162
    .line 163
    :goto_2
    const/4 v12, 0x5

    .line 164
    invoke-virtual {v2, v12, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    if-nez v12, :cond_6

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    move-object v10, v12

    .line 172
    :goto_3
    if-nez v10, :cond_7

    .line 173
    .line 174
    iget-object v10, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 175
    .line 176
    iget-object v12, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 177
    .line 178
    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 179
    .line 180
    iput-object v12, v10, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_7
    iget-object v12, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 184
    .line 185
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-lez v13, :cond_8

    .line 190
    .line 191
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    goto :goto_4

    .line 196
    :cond_8
    move-object v10, v9

    .line 197
    :goto_4
    iput-object v10, v12, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 198
    .line 199
    :goto_5
    iget-object v10, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 200
    .line 201
    const/16 v12, 0xd

    .line 202
    .line 203
    invoke-virtual {v2, v12, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    iput-boolean v12, v10, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 208
    .line 209
    iget-object v10, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 210
    .line 211
    const/16 v12, 0x9

    .line 212
    .line 213
    invoke-virtual {v2, v12, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    iput-boolean v12, v10, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 218
    .line 219
    iget-object v10, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 220
    .line 221
    const/16 v12, 0xc

    .line 222
    .line 223
    invoke-virtual {v2, v12, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    iput v12, v10, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 228
    .line 229
    iget-object v10, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 230
    .line 231
    const/16 v12, 0x15

    .line 232
    .line 233
    invoke-virtual {v2, v12, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v12

    .line 237
    iput-object v12, v10, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 238
    .line 239
    iget-object v10, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 240
    .line 241
    iput v1, v10, Landroid/content/pm/ProviderInfo;->flags:I

    .line 242
    .line 243
    const/16 v10, 0x10

    .line 244
    .line 245
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    if-eqz v10, :cond_9

    .line 250
    .line 251
    iget-object v10, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 252
    .line 253
    iget v12, v10, Landroid/content/pm/ProviderInfo;->flags:I

    .line 254
    .line 255
    const/high16 v13, 0x40000000    # 2.0f

    .line 256
    .line 257
    or-int/2addr v12, v13

    .line 258
    iput v12, v10, Landroid/content/pm/ProviderInfo;->flags:I

    .line 259
    .line 260
    iget-boolean v10, v10, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 261
    .line 262
    if-eqz v10, :cond_9

    .line 263
    .line 264
    and-int/lit16 v0, v0, 0x80

    .line 265
    .line 266
    if-nez v0, :cond_9

    .line 267
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v10, "Provider exported request ignored due to singleUser: "

    .line 271
    .line 272
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v10, v8, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v10, " at "

    .line 281
    .line 282
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-object v10, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v10, " "

    .line 291
    .line 292
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    const-string v10, "PackageParser"

    .line 307
    .line 308
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 312
    .line 313
    iput-boolean v1, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 314
    .line 315
    :cond_9
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 316
    .line 317
    const/16 v10, 0x12

    .line 318
    .line 319
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 320
    .line 321
    .line 322
    move-result v10

    .line 323
    iput-boolean v10, v0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 324
    .line 325
    iput-boolean v10, v0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    .line 326
    .line 327
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 328
    .line 329
    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 330
    .line 331
    if-eqz v0, :cond_a

    .line 332
    .line 333
    iget-object v0, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 334
    .line 335
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 336
    .line 337
    or-int/lit16 v10, v10, 0x100

    .line 338
    .line 339
    iput v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 340
    .line 341
    :cond_a
    const/16 v0, 0x14

    .line 342
    .line 343
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 344
    .line 345
    .line 346
    move-result v10

    .line 347
    if-eqz v10, :cond_b

    .line 348
    .line 349
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 350
    .line 351
    iget v12, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 352
    .line 353
    const/high16 v13, 0x100000

    .line 354
    .line 355
    or-int/2addr v12, v13

    .line 356
    iput v12, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 357
    .line 358
    iput-boolean v11, v4, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 359
    .line 360
    :cond_b
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    .line 362
    .line 363
    iget-object v0, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 364
    .line 365
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 366
    .line 367
    and-int/lit8 v0, v0, 0x2

    .line 368
    .line 369
    if-eqz v0, :cond_c

    .line 370
    .line 371
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 372
    .line 373
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 374
    .line 375
    iget-object v2, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 376
    .line 377
    if-ne v0, v2, :cond_c

    .line 378
    .line 379
    const-string v0, "Heavy-weight applications can not have providers in main process"

    .line 380
    .line 381
    aput-object v0, p5, v1

    .line 382
    .line 383
    return-object v9

    .line 384
    :cond_c
    if-nez v6, :cond_d

    .line 385
    .line 386
    const-string v0, "<provider> does not include authorities attribute"

    .line 387
    .line 388
    aput-object v0, p5, v1

    .line 389
    .line 390
    return-object v9

    .line 391
    :cond_d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-gtz v0, :cond_e

    .line 396
    .line 397
    const-string v0, "<provider> has empty authorities attribute"

    .line 398
    .line 399
    aput-object v0, p5, v1

    .line 400
    .line 401
    return-object v9

    .line 402
    :cond_e
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 403
    .line 404
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 409
    .line 410
    move-object/from16 v0, p0

    .line 411
    .line 412
    move-object/from16 v1, p2

    .line 413
    .line 414
    move-object/from16 v2, p3

    .line 415
    .line 416
    move v3, v10

    .line 417
    move-object/from16 v4, p1

    .line 418
    .line 419
    move-object v5, v8

    .line 420
    move-object/from16 v6, p5

    .line 421
    .line 422
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-nez v0, :cond_f

    .line 427
    .line 428
    return-object v9

    .line 429
    :cond_f
    return-object v8
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v10, p5

    .line 8
    .line 9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 10
    .line 11
    .line 12
    move-result v11

    .line 13
    move/from16 v12, p3

    .line 14
    .line 15
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v13, 0x1

    .line 20
    if-eq v0, v13, :cond_1c

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-le v2, v11, :cond_1c

    .line 30
    .line 31
    :cond_0
    if-eq v0, v1, :cond_1b

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string/jumbo v3, "intent-filter"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v15, 0x0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    new-instance v6, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 53
    .line 54
    invoke-direct {v6, v10}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    const/4 v4, 0x0

    .line 59
    move-object/from16 v0, p0

    .line 60
    .line 61
    move-object/from16 v1, p1

    .line 62
    .line 63
    move-object/from16 v2, p2

    .line 64
    .line 65
    move-object v5, v6

    .line 66
    move-object v14, v6

    .line 67
    move-object/from16 v6, p6

    .line 68
    .line 69
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    return v15

    .line 76
    :cond_2
    if-eqz v12, :cond_3

    .line 77
    .line 78
    invoke-virtual {v14, v13}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 82
    .line 83
    iget v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 84
    .line 85
    const/high16 v2, 0x100000

    .line 86
    .line 87
    or-int/2addr v1, v2

    .line 88
    iput v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 89
    .line 90
    :cond_3
    iget-object v0, v10, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto/16 :goto_8

    .line 96
    .line 97
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string/jumbo v3, "meta-data"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    iget-object v0, v10, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 111
    .line 112
    move-object/from16 v3, p6

    .line 113
    .line 114
    invoke-direct {v7, v8, v9, v0, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, v10, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 119
    .line 120
    if-nez v0, :cond_5

    .line 121
    .line 122
    return v15

    .line 123
    :cond_5
    if-nez v12, :cond_7

    .line 124
    .line 125
    const-string/jumbo v1, "instantapps.clients.allowed"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 135
    .line 136
    iget v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 137
    .line 138
    const/high16 v2, 0x100000

    .line 139
    .line 140
    or-int/2addr v1, v2

    .line 141
    iput v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 142
    .line 143
    move-object/from16 v0, p4

    .line 144
    .line 145
    iput-boolean v13, v0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 146
    .line 147
    iget-object v1, v10, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    sub-int/2addr v1, v13

    .line 154
    :goto_1
    if-ltz v1, :cond_6

    .line 155
    .line 156
    iget-object v2, v10, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 163
    .line 164
    invoke-virtual {v2, v13}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 165
    .line 166
    .line 167
    add-int/lit8 v1, v1, -0x1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_6
    move v12, v13

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_7
    move-object/from16 v0, p4

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_8
    move-object/from16 v0, p4

    .line 178
    .line 179
    move-object/from16 v3, p6

    .line 180
    .line 181
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    const-string/jumbo v5, "grant-uri-permission"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    const-string v14, " "

    .line 193
    .line 194
    const-string v5, " at "

    .line 195
    .line 196
    const-string v2, "PackageParser"

    .line 197
    .line 198
    if-eqz v4, :cond_e

    .line 199
    .line 200
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    .line 201
    .line 202
    invoke-virtual {v8, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1, v15, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    if-eqz v4, :cond_9

    .line 211
    .line 212
    new-instance v6, Landroid/os/PatternMatcher;

    .line 213
    .line 214
    invoke-direct {v6, v4, v15}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_9
    const/4 v6, 0x0

    .line 219
    :goto_2
    invoke-virtual {v1, v13, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    if-eqz v4, :cond_a

    .line 224
    .line 225
    new-instance v6, Landroid/os/PatternMatcher;

    .line 226
    .line 227
    invoke-direct {v6, v4, v13}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    :cond_a
    const/4 v4, 0x2

    .line 231
    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    if-eqz v13, :cond_b

    .line 236
    .line 237
    new-instance v6, Landroid/os/PatternMatcher;

    .line 238
    .line 239
    invoke-direct {v6, v13, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    :cond_b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    .line 244
    .line 245
    if-eqz v6, :cond_d

    .line 246
    .line 247
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 248
    .line 249
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 250
    .line 251
    if-nez v2, :cond_c

    .line 252
    .line 253
    const/4 v4, 0x1

    .line 254
    new-array v2, v4, [Landroid/os/PatternMatcher;

    .line 255
    .line 256
    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 257
    .line 258
    aput-object v6, v2, v15

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_c
    array-length v1, v2

    .line 262
    add-int/lit8 v4, v1, 0x1

    .line 263
    .line 264
    new-array v4, v4, [Landroid/os/PatternMatcher;

    .line 265
    .line 266
    invoke-static {v2, v15, v4, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    .line 268
    .line 269
    aput-object v6, v4, v1

    .line 270
    .line 271
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 272
    .line 273
    iput-object v4, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 274
    .line 275
    :goto_3
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 276
    .line 277
    const/4 v2, 0x1

    .line 278
    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 279
    .line 280
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v4, "Unknown element under <path-permission>: "

    .line 288
    .line 289
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    iget-object v4, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_e
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    const-string/jumbo v6, "path-permission"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    if-eqz v4, :cond_1a

    .line 341
    .line 342
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    .line 343
    .line 344
    invoke-virtual {v8, v9, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-virtual {v4, v15, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    const/4 v13, 0x1

    .line 353
    invoke-virtual {v4, v13, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v16

    .line 357
    if-nez v16, :cond_f

    .line 358
    .line 359
    move-object/from16 v16, v6

    .line 360
    .line 361
    :cond_f
    const/4 v13, 0x2

    .line 362
    invoke-virtual {v4, v13, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v17

    .line 366
    if-nez v17, :cond_10

    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_10
    move-object/from16 v6, v17

    .line 370
    .line 371
    :goto_4
    if-eqz v16, :cond_11

    .line 372
    .line 373
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v16

    .line 377
    move-object/from16 v18, v16

    .line 378
    .line 379
    const/4 v13, 0x1

    .line 380
    goto :goto_5

    .line 381
    :cond_11
    move v13, v15

    .line 382
    move-object/from16 v18, v16

    .line 383
    .line 384
    :goto_5
    if-eqz v6, :cond_12

    .line 385
    .line 386
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    const/4 v13, 0x1

    .line 391
    :cond_12
    if-nez v13, :cond_13

    .line 392
    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string v4, "No readPermission or writePermssion for <path-permission>: "

    .line 396
    .line 397
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    iget-object v4, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .line 431
    .line 432
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_13
    invoke-virtual {v4, v1, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v13

    .line 441
    if-eqz v13, :cond_14

    .line 442
    .line 443
    new-instance v1, Landroid/content/pm/PathPermission;

    .line 444
    .line 445
    move-object/from16 v0, v18

    .line 446
    .line 447
    invoke-direct {v1, v13, v15, v0, v6}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    goto :goto_6

    .line 451
    :cond_14
    move-object/from16 v0, v18

    .line 452
    .line 453
    const/4 v1, 0x0

    .line 454
    :goto_6
    const/4 v13, 0x4

    .line 455
    invoke-virtual {v4, v13, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v13

    .line 459
    if-eqz v13, :cond_15

    .line 460
    .line 461
    new-instance v1, Landroid/content/pm/PathPermission;

    .line 462
    .line 463
    const/4 v15, 0x1

    .line 464
    invoke-direct {v1, v13, v15, v0, v6}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    :cond_15
    const/4 v13, 0x5

    .line 468
    const/4 v15, 0x0

    .line 469
    invoke-virtual {v4, v13, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v13

    .line 473
    if-eqz v13, :cond_16

    .line 474
    .line 475
    new-instance v1, Landroid/content/pm/PathPermission;

    .line 476
    .line 477
    const/4 v15, 0x2

    .line 478
    invoke-direct {v1, v13, v15, v0, v6}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    :cond_16
    const/4 v13, 0x6

    .line 482
    const/4 v15, 0x0

    .line 483
    invoke-virtual {v4, v13, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v13

    .line 487
    if-eqz v13, :cond_17

    .line 488
    .line 489
    new-instance v1, Landroid/content/pm/PathPermission;

    .line 490
    .line 491
    const/4 v15, 0x3

    .line 492
    invoke-direct {v1, v13, v15, v0, v6}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    :cond_17
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 496
    .line 497
    .line 498
    if-eqz v1, :cond_19

    .line 499
    .line 500
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 501
    .line 502
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 503
    .line 504
    if-nez v2, :cond_18

    .line 505
    .line 506
    const/4 v4, 0x1

    .line 507
    new-array v2, v4, [Landroid/content/pm/PathPermission;

    .line 508
    .line 509
    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 510
    .line 511
    const/4 v0, 0x0

    .line 512
    aput-object v1, v2, v0

    .line 513
    .line 514
    goto :goto_7

    .line 515
    :cond_18
    const/4 v0, 0x0

    .line 516
    array-length v4, v2

    .line 517
    add-int/lit8 v5, v4, 0x1

    .line 518
    .line 519
    new-array v5, v5, [Landroid/content/pm/PathPermission;

    .line 520
    .line 521
    invoke-static {v2, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    .line 523
    .line 524
    aput-object v1, v5, v4

    .line 525
    .line 526
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 527
    .line 528
    iput-object v5, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 529
    .line 530
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_0

    .line 534
    .line 535
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    const-string v1, "No path, pathPrefix, or pathPattern for <path-permission>: "

    .line 538
    .line 539
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 575
    .line 576
    .line 577
    goto/16 :goto_0

    .line 578
    .line 579
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    const-string v1, "Unknown element under <provider>: "

    .line 582
    .line 583
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 597
    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 619
    .line 620
    .line 621
    goto/16 :goto_0

    .line 622
    .line 623
    :cond_1b
    :goto_8
    move-object/from16 v3, p6

    .line 624
    .line 625
    goto/16 :goto_0

    .line 626
    .line 627
    :cond_1c
    move v0, v13

    .line 628
    return v0
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "PackageParser"

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "Could not parse null public key"

    .line 7
    .line 8
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    .line 20
    .line 21
    .line 22
    :try_start_1
    const-string p0, "RSA"

    .line 23
    .line 24
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    return-object p0

    .line 33
    :catch_0
    const-string p0, "Could not parse public key: RSA KeyFactory not included in build"

    .line 34
    .line 35
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :catch_1
    :try_start_2
    const-string p0, "EC"

    .line 39
    .line 40
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_3

    .line 48
    return-object p0

    .line 49
    :catch_2
    const-string p0, "Could not parse public key: EC KeyFactory not included in build"

    .line 50
    .line 51
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :catch_3
    :try_start_3
    const-string p0, "DSA"

    .line 55
    .line 56
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 61
    .line 62
    .line 63
    move-result-object p0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_5

    .line 64
    return-object p0

    .line 65
    :catch_4
    const-string p0, "Could not parse public key: DSA KeyFactory not included in build"

    .line 66
    .line 67
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :catch_5
    return-object v0

    .line 71
    :catch_6
    const-string p0, "Could not parse verifier public key; invalid Base64"

    .line 72
    .line 73
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;
    .locals 24

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move/from16 v0, p4

    .line 10
    .line 11
    move-object/from16 v3, p5

    .line 12
    .line 13
    move-object/from16 v1, p6

    .line 14
    .line 15
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    .line 16
    .line 17
    invoke-virtual {v5, v4, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 22
    .line 23
    if-nez v8, :cond_0

    .line 24
    .line 25
    new-instance v15, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 26
    .line 27
    const/4 v11, 0x2

    .line 28
    const/4 v12, 0x0

    .line 29
    const/4 v13, 0x1

    .line 30
    const/16 v14, 0xf

    .line 31
    .line 32
    const/16 v16, 0x8

    .line 33
    .line 34
    const/16 v17, 0xc

    .line 35
    .line 36
    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 37
    .line 38
    const/16 v18, 0x6

    .line 39
    .line 40
    const/16 v19, 0x7

    .line 41
    .line 42
    const/16 v20, 0x4

    .line 43
    .line 44
    move-object v8, v15

    .line 45
    move-object/from16 v9, p1

    .line 46
    .line 47
    move-object/from16 v21, v10

    .line 48
    .line 49
    move-object/from16 v10, p5

    .line 50
    .line 51
    move-object/from16 v22, v15

    .line 52
    .line 53
    move/from16 v15, v16

    .line 54
    .line 55
    move/from16 v16, v17

    .line 56
    .line 57
    move-object/from16 v17, v21

    .line 58
    .line 59
    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    .line 60
    .line 61
    .line 62
    move-object/from16 v8, v22

    .line 63
    .line 64
    iput-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 65
    .line 66
    const-string v9, "<service>"

    .line 67
    .line 68
    iput-object v9, v8, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 69
    .line 70
    :cond_0
    iget-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 71
    .line 72
    iput-object v2, v8, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 73
    .line 74
    iput v0, v8, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 75
    .line 76
    new-instance v8, Landroid/content/pm/PackageParser$Service;

    .line 77
    .line 78
    iget-object v1, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 79
    .line 80
    new-instance v9, Landroid/content/pm/ServiceInfo;

    .line 81
    .line 82
    invoke-direct {v9}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-direct {v8, v1, v9}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    .line 86
    .line 87
    .line 88
    const/4 v9, 0x0

    .line 89
    aget-object v1, v3, v9

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    .line 96
    .line 97
    return-object v10

    .line 98
    :cond_1
    const/4 v1, 0x5

    .line 99
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-eqz v11, :cond_2

    .line 104
    .line 105
    iget-object v12, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 106
    .line 107
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iput-boolean v1, v12, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 112
    .line 113
    :cond_2
    const/4 v12, 0x3

    .line 114
    invoke-virtual {v2, v12, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-nez v1, :cond_3

    .line 119
    .line 120
    iget-object v1, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 121
    .line 122
    iget-object v13, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 123
    .line 124
    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v13, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    iget-object v13, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    if-lez v14, :cond_4

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    goto :goto_0

    .line 142
    :cond_4
    move-object v1, v10

    .line 143
    :goto_0
    iput-object v1, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 144
    .line 145
    :goto_1
    iget-object v1, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 146
    .line 147
    const/16 v13, 0x11

    .line 148
    .line 149
    invoke-virtual {v2, v13, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    iput-object v13, v1, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v1, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 156
    .line 157
    iput v9, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 158
    .line 159
    const/16 v1, 0x9

    .line 160
    .line 161
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    const/4 v13, 0x1

    .line 166
    if-eqz v1, :cond_5

    .line 167
    .line 168
    iget-object v1, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 169
    .line 170
    iget v14, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 171
    .line 172
    or-int/2addr v14, v13

    .line 173
    iput v14, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 174
    .line 175
    :cond_5
    const/16 v1, 0xa

    .line 176
    .line 177
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_6

    .line 182
    .line 183
    iget-object v1, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 184
    .line 185
    iget v14, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 186
    .line 187
    or-int/lit8 v14, v14, 0x2

    .line 188
    .line 189
    iput v14, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 190
    .line 191
    :cond_6
    const/16 v1, 0xe

    .line 192
    .line 193
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    const/4 v14, 0x4

    .line 198
    if-eqz v1, :cond_7

    .line 199
    .line 200
    iget-object v1, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 201
    .line 202
    iget v15, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 203
    .line 204
    or-int/2addr v15, v14

    .line 205
    iput v15, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 206
    .line 207
    :cond_7
    const/16 v1, 0xb

    .line 208
    .line 209
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    const-string v15, " "

    .line 214
    .line 215
    const-string v4, " at "

    .line 216
    .line 217
    const-string v14, "PackageParser"

    .line 218
    .line 219
    if-eqz v1, :cond_8

    .line 220
    .line 221
    iget-object v1, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 222
    .line 223
    iget v12, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 224
    .line 225
    const/high16 v17, 0x40000000    # 2.0f

    .line 226
    .line 227
    or-int v12, v12, v17

    .line 228
    .line 229
    iput v12, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 230
    .line 231
    iget-boolean v1, v1, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 232
    .line 233
    if-eqz v1, :cond_8

    .line 234
    .line 235
    and-int/lit16 v0, v0, 0x80

    .line 236
    .line 237
    if-nez v0, :cond_8

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v1, "Service exported request ignored due to singleUser: "

    .line 242
    .line 243
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v1, v8, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    iget-object v0, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 277
    .line 278
    iput-boolean v9, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 279
    .line 280
    move v11, v13

    .line 281
    :cond_8
    iget-object v0, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 282
    .line 283
    const/16 v1, 0xd

    .line 284
    .line 285
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    iput-boolean v1, v0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 290
    .line 291
    iput-boolean v1, v0, Landroid/content/pm/ComponentInfo;->encryptionAware:Z

    .line 292
    .line 293
    iget-object v0, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 294
    .line 295
    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 296
    .line 297
    if-eqz v0, :cond_9

    .line 298
    .line 299
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 300
    .line 301
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 302
    .line 303
    or-int/lit16 v1, v1, 0x100

    .line 304
    .line 305
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 306
    .line 307
    :cond_9
    const/16 v0, 0x10

    .line 308
    .line 309
    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    const/high16 v12, 0x100000

    .line 314
    .line 315
    if-eqz v0, :cond_a

    .line 316
    .line 317
    iget-object v1, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 318
    .line 319
    iget v10, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 320
    .line 321
    or-int/2addr v10, v12

    .line 322
    iput v10, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 323
    .line 324
    iput-boolean v13, v6, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 325
    .line 326
    :cond_a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 327
    .line 328
    .line 329
    iget-object v1, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 330
    .line 331
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 332
    .line 333
    and-int/lit8 v1, v1, 0x2

    .line 334
    .line 335
    if-eqz v1, :cond_b

    .line 336
    .line 337
    iget-object v1, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 338
    .line 339
    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 340
    .line 341
    iget-object v2, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 342
    .line 343
    if-ne v1, v2, :cond_b

    .line 344
    .line 345
    const-string v0, "Heavy-weight applications can not have services in main process"

    .line 346
    .line 347
    aput-object v0, v3, v9

    .line 348
    .line 349
    const/4 v0, 0x0

    .line 350
    return-object v0

    .line 351
    :cond_b
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 352
    .line 353
    .line 354
    move-result v10

    .line 355
    move/from16 v18, v0

    .line 356
    .line 357
    :goto_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eq v0, v13, :cond_16

    .line 362
    .line 363
    const/4 v2, 0x3

    .line 364
    if-ne v0, v2, :cond_c

    .line 365
    .line 366
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-le v1, v10, :cond_16

    .line 371
    .line 372
    :cond_c
    if-eq v0, v2, :cond_15

    .line 373
    .line 374
    const/4 v1, 0x4

    .line 375
    if-ne v0, v1, :cond_d

    .line 376
    .line 377
    move/from16 v20, v1

    .line 378
    .line 379
    move/from16 v21, v2

    .line 380
    .line 381
    move-object v9, v3

    .line 382
    move-object v1, v5

    .line 383
    move-object v0, v6

    .line 384
    const/4 v3, 0x0

    .line 385
    goto/16 :goto_4

    .line 386
    .line 387
    :cond_d
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    const-string/jumbo v1, "intent-filter"

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_10

    .line 399
    .line 400
    new-instance v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 401
    .line 402
    invoke-direct {v1, v8}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 403
    .line 404
    .line 405
    const/16 v16, 0x1

    .line 406
    .line 407
    const/16 v19, 0x0

    .line 408
    .line 409
    move-object/from16 v0, p0

    .line 410
    .line 411
    move-object/from16 p4, v1

    .line 412
    .line 413
    const/16 v20, 0x4

    .line 414
    .line 415
    move-object/from16 v1, p2

    .line 416
    .line 417
    move/from16 v21, v2

    .line 418
    .line 419
    move-object/from16 v2, p3

    .line 420
    .line 421
    move-object v9, v3

    .line 422
    move/from16 v3, v16

    .line 423
    .line 424
    move-object/from16 v23, v4

    .line 425
    .line 426
    move/from16 v4, v19

    .line 427
    .line 428
    move-object/from16 v5, p4

    .line 429
    .line 430
    move-object/from16 v6, p5

    .line 431
    .line 432
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-nez v0, :cond_e

    .line 437
    .line 438
    const/4 v0, 0x0

    .line 439
    return-object v0

    .line 440
    :cond_e
    move-object/from16 v0, p4

    .line 441
    .line 442
    if-eqz v18, :cond_f

    .line 443
    .line 444
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 445
    .line 446
    .line 447
    iget-object v1, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 448
    .line 449
    iget v2, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 450
    .line 451
    or-int/2addr v2, v12

    .line 452
    iput v2, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 453
    .line 454
    :cond_f
    iget-object v1, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-object/from16 v0, p1

    .line 460
    .line 461
    move-object/from16 v1, p2

    .line 462
    .line 463
    move-object/from16 v2, p3

    .line 464
    .line 465
    move-object/from16 v5, v23

    .line 466
    .line 467
    const/4 v3, 0x0

    .line 468
    goto/16 :goto_5

    .line 469
    .line 470
    :cond_10
    move/from16 v21, v2

    .line 471
    .line 472
    move-object v9, v3

    .line 473
    move-object/from16 v23, v4

    .line 474
    .line 475
    const/16 v20, 0x4

    .line 476
    .line 477
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const-string/jumbo v1, "meta-data"

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    if-eqz v0, :cond_14

    .line 489
    .line 490
    iget-object v0, v8, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 491
    .line 492
    move-object/from16 v1, p2

    .line 493
    .line 494
    move-object/from16 v2, p3

    .line 495
    .line 496
    invoke-direct {v7, v1, v2, v0, v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    iput-object v0, v8, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 501
    .line 502
    if-nez v0, :cond_11

    .line 503
    .line 504
    const/4 v3, 0x0

    .line 505
    return-object v3

    .line 506
    :cond_11
    const/4 v3, 0x0

    .line 507
    if-nez v18, :cond_13

    .line 508
    .line 509
    const-string/jumbo v4, "instantapps.clients.allowed"

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_13

    .line 517
    .line 518
    iget-object v0, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 519
    .line 520
    iget v4, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 521
    .line 522
    or-int/2addr v4, v12

    .line 523
    iput v4, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 524
    .line 525
    move-object/from16 v0, p1

    .line 526
    .line 527
    iput-boolean v13, v0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 528
    .line 529
    iget-object v4, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 530
    .line 531
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    sub-int/2addr v4, v13

    .line 536
    :goto_3
    if-ltz v4, :cond_12

    .line 537
    .line 538
    iget-object v5, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 539
    .line 540
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    check-cast v5, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 545
    .line 546
    invoke-virtual {v5, v13}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 547
    .line 548
    .line 549
    add-int/lit8 v4, v4, -0x1

    .line 550
    .line 551
    goto :goto_3

    .line 552
    :cond_12
    move-object v6, v0

    .line 553
    move-object v5, v1

    .line 554
    move-object v3, v9

    .line 555
    move/from16 v18, v13

    .line 556
    .line 557
    move-object/from16 v4, v23

    .line 558
    .line 559
    const/4 v9, 0x0

    .line 560
    goto/16 :goto_2

    .line 561
    .line 562
    :cond_13
    move-object/from16 v0, p1

    .line 563
    .line 564
    move-object/from16 v5, v23

    .line 565
    .line 566
    goto :goto_5

    .line 567
    :cond_14
    move-object/from16 v0, p1

    .line 568
    .line 569
    move-object/from16 v1, p2

    .line 570
    .line 571
    move-object/from16 v2, p3

    .line 572
    .line 573
    const/4 v3, 0x0

    .line 574
    new-instance v4, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string v5, "Unknown element under <service>: "

    .line 577
    .line 578
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v5

    .line 585
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    move-object/from16 v5, v23

    .line 589
    .line 590
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    iget-object v6, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 594
    .line 595
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v6

    .line 605
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v4

    .line 612
    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 616
    .line 617
    .line 618
    goto :goto_5

    .line 619
    :cond_15
    move/from16 v21, v2

    .line 620
    .line 621
    move-object v9, v3

    .line 622
    move-object v1, v5

    .line 623
    move-object v0, v6

    .line 624
    const/4 v3, 0x0

    .line 625
    const/16 v20, 0x4

    .line 626
    .line 627
    :goto_4
    move-object/from16 v2, p3

    .line 628
    .line 629
    move-object v5, v4

    .line 630
    :goto_5
    move-object v6, v0

    .line 631
    move-object v4, v5

    .line 632
    move-object v3, v9

    .line 633
    const/4 v9, 0x0

    .line 634
    move-object v5, v1

    .line 635
    goto/16 :goto_2

    .line 636
    .line 637
    :cond_16
    if-nez v11, :cond_18

    .line 638
    .line 639
    iget-object v0, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 640
    .line 641
    iget-object v1, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 642
    .line 643
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    if-lez v1, :cond_17

    .line 648
    .line 649
    move v9, v13

    .line 650
    goto :goto_6

    .line 651
    :cond_17
    const/4 v9, 0x0

    .line 652
    :goto_6
    iput-boolean v9, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 653
    .line 654
    :cond_18
    return-object v8
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 8

    .line 15
    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 17
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 19
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_6

    :cond_1
    if-eq v4, v6, :cond_0

    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "application"

    .line 21
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "PackageParser"

    if-eqz v4, :cond_5

    if-eqz v3, :cond_3

    const-string v4, "<manifest> has more than one <application>"

    .line 22
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return-object v0

    :cond_4
    move v3, v5

    goto :goto_0

    .line 25
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown element under <manifest>: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_6
    if-nez v3, :cond_7

    const-string p2, "<manifest> does not contain an <application>"

    .line 29
    aput-object p2, p6, v2

    const/16 p2, -0x6d

    .line 30
    iput p2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    :cond_7
    return-object p1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 30

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    const-string v7, "Failed to read manifest from "

    move-object/from16 v2, p1

    .line 1
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v6, v1, p2

    const/4 v1, 0x1

    .line 2
    iput v1, v8, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3
    iput-object v6, v8, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move/from16 v5, p4

    .line 4
    invoke-static {v0, v6, v5}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    .line 5
    :try_start_0
    new-instance v15, Landroid/content/res/Resources;

    iget-object v9, v8, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v15, v0, v9, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 6
    sget v28, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    move-object/from16 v9, p3

    move-object/from16 v29, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    invoke-virtual/range {v9 .. v27}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    const-string v9, "AndroidManifest.xml"

    .line 7
    invoke-virtual {v0, v3, v9}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-array v0, v1, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v29

    move-object v4, v9

    move/from16 v5, p4

    move-object v10, v6

    move/from16 v6, p2

    move-object v11, v7

    move-object v7, v0

    .line 8
    :try_start_2
    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 9
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 10
    :cond_0
    :try_start_3
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    iget v2, v8, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v9

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v10, v6

    move-object v11, v7

    :goto_0
    move-object v4, v9

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v10, v6

    move-object v11, v7

    .line 12
    :goto_1
    :try_start_4
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x66

    invoke-direct {v1, v3, v2, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    .line 13
    :goto_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 14
    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v12, p3

    .line 8
    .line 9
    move-object/from16 v13, p6

    .line 10
    .line 11
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    .line 12
    .line 13
    invoke-virtual {v11, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x7

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v3, 0x4

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 27
    .line 28
    aget v4, v1, p5

    .line 29
    .line 30
    or-int/2addr v4, v3

    .line 31
    aput v4, v1, p5

    .line 32
    .line 33
    :cond_0
    const/16 v1, 0x2e

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/16 v14, -0x6c

    .line 40
    .line 41
    const/4 v15, 0x0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string v1, "Invalid class loader name: "

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    aput-object v0, v13, v15

    .line 58
    .line 59
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    .line 60
    .line 61
    return v15

    .line 62
    :cond_2
    :goto_0
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    .line 64
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 65
    .line 66
    aput-object v0, v1, p5

    .line 67
    .line 68
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eq v0, v2, :cond_18

    .line 77
    .line 78
    const/4 v1, 0x3

    .line 79
    if-ne v0, v1, :cond_3

    .line 80
    .line 81
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-le v4, v8, :cond_18

    .line 86
    .line 87
    :cond_3
    if-eq v0, v1, :cond_17

    .line 88
    .line 89
    if-ne v0, v3, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    new-instance v6, Landroid/content/pm/PackageParser$CachedComponentArgs;

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-direct {v6, v0}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser$1;)V

    .line 96
    .line 97
    .line 98
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "activity"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    iget-boolean v5, v10, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 112
    .line 113
    move-object/from16 v0, p0

    .line 114
    .line 115
    move-object/from16 v1, p1

    .line 116
    .line 117
    move-object/from16 v2, p2

    .line 118
    .line 119
    move-object/from16 v3, p3

    .line 120
    .line 121
    move/from16 v4, p4

    .line 122
    .line 123
    move/from16 v16, v5

    .line 124
    .line 125
    move-object/from16 v5, p6

    .line 126
    .line 127
    move/from16 v17, v8

    .line 128
    .line 129
    move/from16 v8, v16

    .line 130
    .line 131
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    .line 138
    .line 139
    return v15

    .line 140
    :cond_5
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 146
    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :cond_6
    move/from16 v17, v8

    .line 150
    .line 151
    const-string/jumbo v2, "receiver"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_8

    .line 159
    .line 160
    const/4 v7, 0x1

    .line 161
    const/4 v8, 0x0

    .line 162
    move-object/from16 v0, p0

    .line 163
    .line 164
    move-object/from16 v1, p1

    .line 165
    .line 166
    move-object/from16 v2, p2

    .line 167
    .line 168
    move-object/from16 v3, p3

    .line 169
    .line 170
    move/from16 v4, p4

    .line 171
    .line 172
    move-object/from16 v5, p6

    .line 173
    .line 174
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-nez v0, :cond_7

    .line 179
    .line 180
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    .line 181
    .line 182
    return v15

    .line 183
    :cond_7
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :cond_8
    const-string/jumbo v2, "service"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_a

    .line 200
    .line 201
    move-object/from16 v0, p0

    .line 202
    .line 203
    move-object/from16 v1, p1

    .line 204
    .line 205
    move-object/from16 v2, p2

    .line 206
    .line 207
    move-object/from16 v3, p3

    .line 208
    .line 209
    move/from16 v4, p4

    .line 210
    .line 211
    move-object/from16 v5, p6

    .line 212
    .line 213
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    if-nez v0, :cond_9

    .line 218
    .line 219
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    .line 220
    .line 221
    return v15

    .line 222
    :cond_9
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_a
    const-string/jumbo v2, "provider"

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_c

    .line 239
    .line 240
    move-object/from16 v0, p0

    .line 241
    .line 242
    move-object/from16 v1, p1

    .line 243
    .line 244
    move-object/from16 v2, p2

    .line 245
    .line 246
    move-object/from16 v3, p3

    .line 247
    .line 248
    move/from16 v4, p4

    .line 249
    .line 250
    move-object/from16 v5, p6

    .line 251
    .line 252
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-nez v0, :cond_b

    .line 257
    .line 258
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    .line 259
    .line 260
    return v15

    .line 261
    :cond_b
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 267
    .line 268
    goto/16 :goto_3

    .line 269
    .line 270
    :cond_c
    const-string v2, "activity-alias"

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_e

    .line 277
    .line 278
    move-object/from16 v0, p0

    .line 279
    .line 280
    move-object/from16 v1, p1

    .line 281
    .line 282
    move-object/from16 v2, p2

    .line 283
    .line 284
    move-object/from16 v3, p3

    .line 285
    .line 286
    move/from16 v4, p4

    .line 287
    .line 288
    move-object/from16 v5, p6

    .line 289
    .line 290
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    if-nez v0, :cond_d

    .line 295
    .line 296
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    .line 297
    .line 298
    return v15

    .line 299
    :cond_d
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 305
    .line 306
    goto/16 :goto_3

    .line 307
    .line 308
    :cond_e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    const-string/jumbo v3, "meta-data"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-eqz v2, :cond_f

    .line 320
    .line 321
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 322
    .line 323
    invoke-direct {v9, v11, v12, v1, v13}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    iput-object v1, v10, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 328
    .line 329
    if-nez v1, :cond_14

    .line 330
    .line 331
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    .line 332
    .line 333
    return v15

    .line 334
    :cond_f
    const-string/jumbo v2, "uses-static-library"

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-eqz v2, :cond_10

    .line 342
    .line 343
    invoke-direct {v9, v10, v11, v12, v13}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-nez v1, :cond_14

    .line 348
    .line 349
    return v15

    .line 350
    :cond_10
    const-string/jumbo v2, "uses-library"

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_13

    .line 358
    .line 359
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    .line 360
    .line 361
    invoke-virtual {v11, v12, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    const/4 v3, 0x1

    .line 370
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    .line 376
    .line 377
    if-eqz v2, :cond_12

    .line 378
    .line 379
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    if-eqz v3, :cond_11

    .line 384
    .line 385
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    iput-object v2, v10, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 392
    .line 393
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    iput-object v1, v10, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 400
    .line 401
    goto :goto_2

    .line 402
    :cond_11
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-nez v2, :cond_12

    .line 409
    .line 410
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    iput-object v1, v10, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 417
    .line 418
    :cond_12
    :goto_2
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 419
    .line 420
    .line 421
    goto :goto_3

    .line 422
    :cond_13
    const-string/jumbo v2, "uses-package"

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-eqz v2, :cond_15

    .line 430
    .line 431
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 432
    .line 433
    .line 434
    :cond_14
    :goto_3
    if-eqz v0, :cond_16

    .line 435
    .line 436
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 437
    .line 438
    if-nez v1, :cond_16

    .line 439
    .line 440
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 441
    .line 442
    aget-object v1, v1, p5

    .line 443
    .line 444
    iput-object v1, v0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 445
    .line 446
    goto :goto_4

    .line 447
    :cond_15
    const-string v0, "Unknown element under <application>: "

    .line 448
    .line 449
    const-string v2, " at "

    .line 450
    .line 451
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    iget-object v1, v9, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v1, " "

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    const-string v1, "PackageParser"

    .line 477
    .line 478
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 482
    .line 483
    .line 484
    :cond_16
    :goto_4
    const/4 v2, 0x1

    .line 485
    const/4 v3, 0x4

    .line 486
    move/from16 v8, v17

    .line 487
    .line 488
    goto/16 :goto_1

    .line 489
    .line 490
    :cond_17
    move/from16 v17, v8

    .line 491
    .line 492
    const/4 v2, 0x1

    .line 493
    goto/16 :goto_1

    .line 494
    .line 495
    :cond_18
    return v2
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/pm/FeatureInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    .line 7
    .line 8
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 25
    .line 26
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iput p2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 36
    .line 37
    :cond_0
    const/4 p2, 0x2

    .line 38
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget p2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 45
    .line 46
    or-int/2addr p2, v2

    .line 47
    iput p2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    .line 2
    .line 3
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget v4, v3, Landroid/util/TypedValue;->type:I

    .line 20
    .line 21
    const/16 v5, 0x10

    .line 22
    .line 23
    if-lt v4, v5, :cond_0

    .line 24
    .line 25
    const/16 v5, 0x1f

    .line 26
    .line 27
    if-gt v4, v5, :cond_0

    .line 28
    .line 29
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v0

    .line 33
    :goto_0
    const/4 v4, 0x2

    .line 34
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x3

    .line 39
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    .line 45
    .line 46
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 47
    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    return v2

    .line 52
    :cond_1
    if-eqz v3, :cond_2

    .line 53
    .line 54
    sget p2, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 55
    .line 56
    if-ge v3, p2, :cond_2

    .line 57
    .line 58
    return v2

    .line 59
    :cond_2
    if-eqz v4, :cond_3

    .line 60
    .line 61
    iget-object p2, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 62
    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    invoke-interface {p2, v4}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_3

    .line 70
    .line 71
    return v2

    .line 72
    :cond_3
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-object p2, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 75
    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    invoke-interface {p2, v0}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_4

    .line 83
    .line 84
    return v2

    .line 85
    :cond_4
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    const/4 v0, -0x1

    .line 92
    if-ne p2, v0, :cond_5

    .line 93
    .line 94
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const-string p2, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    .line 105
    .line 106
    const-string v0, " in package: "

    .line 107
    .line 108
    invoke-static {p2, v1, v0}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p1, " at: "

    .line 118
    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string p2, "PackageParser"

    .line 134
    .line 135
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :goto_1
    return v2
.end method

.method private parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    .line 2
    .line 3
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, -0x1

    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v5, 0x2

    .line 19
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    .line 25
    .line 26
    const/16 v0, -0x6c

    .line 27
    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    if-ltz v3, :cond_4

    .line 31
    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 36
    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    const-string p1, "Depending on multiple versions of static library "

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    aput-object p1, p4, v1

    .line 52
    .line 53
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 54
    .line 55
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, ":"

    .line 64
    .line 65
    const-string v6, ""

    .line 66
    .line 67
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    sget-object v5, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 76
    .line 77
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    .line 79
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 80
    .line 81
    const/16 v7, 0x1a

    .line 82
    .line 83
    if-le v6, v7, :cond_2

    .line 84
    .line 85
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/PackageParser;->parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-nez v5, :cond_3

    .line 90
    .line 91
    return v1

    .line 92
    :cond_2
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    array-length p2, v5

    .line 96
    add-int/2addr p2, v4

    .line 97
    new-array p2, p2, [Ljava/lang/String;

    .line 98
    .line 99
    aput-object v2, p2, v1

    .line 100
    .line 101
    array-length p3, v5

    .line 102
    invoke-static {v5, v1, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    .line 104
    .line 105
    iget-object p3, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-static {p3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    iput-object p3, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 112
    .line 113
    iget-object p3, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[I

    .line 114
    .line 115
    invoke-static {p3, v3, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([IIZ)[I

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    iput-object p3, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[I

    .line 120
    .line 121
    const-class p3, [Ljava/lang/String;

    .line 122
    .line 123
    iget-object p4, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {p3, p4, p2, v4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, [[Ljava/lang/String;

    .line 130
    .line 131
    iput-object p2, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 132
    .line 133
    return v4

    .line 134
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string p2, "Bad uses-static-library declaration name: "

    .line 137
    .line 138
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p2, " version: "

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p2, " certDigest"

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    aput-object p1, p4, v1

    .line 165
    .line 166
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 167
    .line 168
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 169
    .line 170
    .line 171
    return v1
.end method

.method private static parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .locals 7

    .line 1
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v3, v1

    .line 8
    move-object v4, v3

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0, v2}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const v6, 0x1010003

    .line 16
    .line 17
    .line 18
    if-eq v5, v6, :cond_1

    .line 19
    .line 20
    const v6, 0x10103a6

    .line 21
    .line 22
    .line 23
    if-eq v5, v6, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-interface {p0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-interface {p0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string p0, "PackageParser"

    .line 39
    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    invoke-static {v4}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    const-string v0, "Unable to parse verifier public key for "

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_4
    new-instance p0, Landroid/content/pm/VerifierInfo;

    .line 66
    .line 67
    invoke-direct {p0, v3, v0}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_5
    :goto_2
    const-string/jumbo v0, "verifier package name was null; skipping"

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return-object v1
.end method

.method public static populateCertificates(Landroid/content/pm/PackageParser$Package;[[Ljava/security/cert/Certificate;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 5
    .line 6
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 7
    .line 8
    :try_start_0
    invoke-static {p1}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    new-instance v0, Landroid/util/ArraySet;

    .line 15
    .line 16
    array-length v1, p1

    .line 17
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    move v1, v0

    .line 24
    :goto_0
    array-length v2, p1

    .line 25
    if-ge v1, v2, :cond_0

    .line 26
    .line 27
    aget-object v2, p1, v1

    .line 28
    .line 29
    aget-object v2, v2, v0

    .line 30
    .line 31
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move p1, v0

    .line 53
    :goto_1
    if-ge v0, p1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 62
    .line 63
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 64
    .line 65
    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 66
    .line 67
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 68
    .line 69
    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 70
    .line 71
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 72
    .line 73
    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    return-void

    .line 79
    :catch_0
    move-exception p1

    .line 80
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, "Failed to collect certificates from "

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const/16 v1, -0x67

    .line 99
    .line 100
    invoke-direct {v0, v1, p0, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw v0
.end method

.method public static readFullyIgnoringContents(Ljava/io/InputStream;)J
    .locals 5

    .line 1
    sget-object v0, Landroid/content/pm/PackageParser;->sBuffer:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [B

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x1000

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    array-length v3, v0

    .line 18
    invoke-virtual {p0, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, -0x1

    .line 23
    if-eq v3, v4, :cond_1

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object p0, Landroid/content/pm/PackageParser;->sBuffer:Ljava/lang/ThreadLocal;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    int-to-long v0, v2

    .line 33
    return-wide v0
.end method

.method private setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V
    .locals 5

    .line 1
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4
    .line 5
    and-int/lit16 v0, v0, 0xc00

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    const/16 v3, 0x28

    .line 15
    .line 16
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_6

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    iget-object p2, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 28
    .line 29
    and-int/lit16 p2, p2, 0x1000

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    const/4 p2, 0x6

    .line 43
    iput p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_4

    .line 51
    .line 52
    const/4 p2, 0x5

    .line 53
    iput p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_5

    .line 61
    .line 62
    const/4 p2, 0x7

    .line 63
    iput p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    const/4 p2, 0x4

    .line 67
    iput p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 68
    .line 69
    :goto_1
    return-void

    .line 70
    :cond_6
    :goto_2
    iget-object p3, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 71
    .line 72
    iget p3, p3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 73
    .line 74
    and-int/lit16 p3, p3, 0x400

    .line 75
    .line 76
    if-eqz p3, :cond_7

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_7
    move v1, v2

    .line 80
    :goto_3
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_8

    .line 85
    .line 86
    const/4 p2, 0x2

    .line 87
    iput p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_8
    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 91
    .line 92
    :goto_4
    return-void
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0

    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    return-void
.end method

.method private setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4
    .line 5
    const/16 v2, 0x1a

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    const v1, 0x3fee147b    # 1.86f

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v3

    .line 15
    :goto_0
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 16
    .line 17
    cmpl-float v2, v0, v3

    .line 18
    .line 19
    const-string v3, "android.max_aspect"

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    move v1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :cond_2
    :goto_1
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 58
    .line 59
    invoke-static {v0}, Landroid/content/pm/PackageParser$Activity;->access$300(Landroid/content/pm/PackageParser$Activity;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    iget-object v2, v0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 67
    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move v2, v1

    .line 76
    :goto_3
    invoke-static {v0, v2}, Landroid/content/pm/PackageParser$Activity;->access$200(Landroid/content/pm/PackageParser$Activity;F)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    return-void
.end method

.method public static toCacheEntryStatic(Landroid/content/pm/PackageParser$Package;)[B
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;-><init>(Landroid/os/Parcel;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageParser$Package;->writeToParcel(Landroid/os/Parcel;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->finishAndUninstall()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V
    .locals 4

    .line 1
    sget-boolean v0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->installed:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 13
    .line 14
    const/high16 v1, 0x800000

    .line 15
    .line 16
    or-int/2addr v0, v1

    .line 17
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 21
    .line 22
    const v1, -0x800001

    .line 23
    .line 24
    .line 25
    and-int/2addr v0, v1

    .line 26
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 27
    .line 28
    :goto_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 33
    .line 34
    const/high16 v1, 0x40000000    # 2.0f

    .line 35
    .line 36
    or-int/2addr v0, v1

    .line 37
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 41
    .line 42
    const v1, -0x40000001    # -1.9999999f

    .line 43
    .line 44
    .line 45
    and-int/2addr v0, v1

    .line 46
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 47
    .line 48
    :goto_1
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 53
    .line 54
    or-int/lit16 v0, v0, 0x80

    .line 55
    .line 56
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 60
    .line 61
    and-int/lit16 v0, v0, -0x81

    .line 62
    .line 63
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 64
    .line 65
    :goto_2
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 70
    .line 71
    const/high16 v1, 0x10000

    .line 72
    .line 73
    or-int/2addr v0, v1

    .line 74
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 78
    .line 79
    const v1, -0x10001

    .line 80
    .line 81
    .line 82
    and-int/2addr v0, v1

    .line 83
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 84
    .line 85
    :goto_3
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 91
    .line 92
    or-int/2addr v0, v1

    .line 93
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 97
    .line 98
    and-int/lit8 v0, v0, -0x2

    .line 99
    .line 100
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 101
    .line 102
    :goto_4
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    .line 103
    .line 104
    if-ne v0, v1, :cond_6

    .line 105
    .line 106
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_6
    const/4 v2, 0x4

    .line 110
    const/4 v3, 0x0

    .line 111
    if-ne v0, v2, :cond_8

    .line 112
    .line 113
    const v2, 0x8000

    .line 114
    .line 115
    .line 116
    and-int/2addr p1, v2

    .line 117
    if-eqz p1, :cond_7

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_7
    move v1, v3

    .line 121
    :goto_5
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_8
    const/4 p1, 0x2

    .line 125
    if-eq v0, p1, :cond_9

    .line 126
    .line 127
    const/4 p1, 0x3

    .line 128
    if-ne v0, p1, :cond_a

    .line 129
    .line 130
    :cond_9
    iput-boolean v3, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 131
    .line 132
    :cond_a
    :goto_6
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 133
    .line 134
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 135
    .line 136
    const/4 v0, -0x1

    .line 137
    if-ne p1, v0, :cond_b

    .line 138
    .line 139
    iget p1, p2, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 140
    .line 141
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 142
    .line 143
    :cond_b
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 144
    .line 145
    if-ne p1, v0, :cond_c

    .line 146
    .line 147
    iget-object p1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {p1}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 154
    .line 155
    :cond_c
    invoke-static {p2}, Landroid/content/pm/SELinuxUtil;->assignSeinfoUser(Landroid/content/pm/PackageUserState;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 160
    .line 161
    iget-object p1, p2, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    .line 162
    .line 163
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 164
    .line 165
    return-void
.end method

.method private static validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    move v3, v1

    .line 8
    move v4, v3

    .line 9
    move v5, v2

    .line 10
    :goto_0
    if-ge v3, v0, :cond_7

    .line 11
    .line 12
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    const/16 v7, 0x61

    .line 17
    .line 18
    if-lt v6, v7, :cond_0

    .line 19
    .line 20
    const/16 v7, 0x7a

    .line 21
    .line 22
    if-le v6, v7, :cond_1

    .line 23
    .line 24
    :cond_0
    const/16 v7, 0x41

    .line 25
    .line 26
    if-lt v6, v7, :cond_2

    .line 27
    .line 28
    const/16 v7, 0x5a

    .line 29
    .line 30
    if-gt v6, v7, :cond_2

    .line 31
    .line 32
    :cond_1
    move v5, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    if-nez v5, :cond_4

    .line 35
    .line 36
    const/16 v7, 0x30

    .line 37
    .line 38
    if-lt v6, v7, :cond_3

    .line 39
    .line 40
    const/16 v7, 0x39

    .line 41
    .line 42
    if-le v6, v7, :cond_5

    .line 43
    .line 44
    :cond_3
    const/16 v7, 0x5f

    .line 45
    .line 46
    if-ne v6, v7, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    const/16 v4, 0x2e

    .line 50
    .line 51
    if-ne v6, v4, :cond_6

    .line 52
    .line 53
    move v4, v2

    .line 54
    move v5, v4

    .line 55
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p1, "bad character \'"

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, "\'"

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_7
    if-eqz p2, :cond_8

    .line 79
    .line 80
    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_8

    .line 85
    .line 86
    const-string p0, "Invalid filename"

    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_8
    if-nez v4, :cond_a

    .line 90
    .line 91
    if-nez p1, :cond_9

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_9
    const-string/jumbo p0, "must have at least one \'.\' separator"

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_a
    :goto_2
    const/4 p0, 0x0

    .line 99
    :goto_3
    return-object p0
.end method


# virtual methods
.method public fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;
    .locals 0

    invoke-static {p1}, Landroid/content/pm/PackageParser;->fromCacheEntryStatic([B)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    return-object p1
.end method

.method public parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroid/content/pm/PackageParser;->newConfiguredAssetManager()Landroid/content/res/AssetManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-boolean v2, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p2, Landroid/content/pm/PackageParser$PackageParserException;

    .line 19
    .line 20
    const-string v0, "Not a coreApp: "

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->i(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/16 v0, -0x6c

    .line 27
    .line 28
    invoke-direct {p2, v0, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p2

    .line 32
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-boolean p1, v1, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 49
    .line 50
    .line 51
    return-object p2

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    return-object p1
.end method

.method public parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;
    .locals 7

    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    return-object p3

    .line 2
    :cond_1
    sget-boolean p3, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    move-wide v2, v0

    .line 3
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    :goto_2
    if-eqz p3, :cond_4

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 7
    :cond_4
    invoke-direct {p0, p1, p2, v4}, Landroid/content/pm/PackageParser;->cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V

    if-eqz p3, :cond_5

    sub-long p2, v0, v2

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    add-long v0, p2, v2

    const-wide/16 v5, 0x64

    cmp-long v0, v0, v5

    if-lez v0, :cond_5

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse times for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\': parse="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms, update_cache="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageParser"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v4
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    return-void
.end method

.method public setCallback(Landroid/content/pm/PackageParser$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    return-void
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    return-void
.end method

.method public toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B
    .locals 0

    invoke-static {p1}, Landroid/content/pm/PackageParser;->toCacheEntryStatic(Landroid/content/pm/PackageParser$Package;)[B

    move-result-object p1

    return-object p1
.end method
