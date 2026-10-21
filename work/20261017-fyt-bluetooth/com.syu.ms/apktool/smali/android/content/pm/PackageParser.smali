.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final PARSE_CHATTY:I = 0x2

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_PRIVILEGED:I = 0x80

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_ON_SDCARD:I = 0x20

.field private static final RIGID_PARSER:Z = false

.field private static final SDK_CODENAME:Ljava/lang/String;

.field private static final SDK_VERSION:I

.field public static final SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static mReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field private static sCompatibilityModeEnabled:Z


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;

.field private mOnlyCoreApps:Z

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 1
    new-instance v2, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-direct {v2, v6, v4, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 2
    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2711

    invoke-direct {v2, v3, v6, v7}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v3, "android.permission.READ_CALL_LOG"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.permission.READ_CONTACTS"

    const/16 v6, 0x10

    invoke-direct {v2, v5, v3, v6}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v3, "android.permission.WRITE_CALL_LOG"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.permission.WRITE_CONTACTS"

    invoke-direct {v2, v5, v3, v6}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v2, v1, v0

    sput-object v1, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 4
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "REL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    .line 6
    sput-boolean v4, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_3

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in package "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    return-object v0

    .line 12
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty class name in package "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    return-object v0
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, ": "

    const-string v3, "Invalid "

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, " in package "

    const-string v7, " name "

    if-eqz p0, :cond_2

    const/16 v8, 0x3a

    if-ne v1, v8, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v8, 0x2

    if-ge v1, v8, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": must be at least two characters"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    return-object v5

    .line 5
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1, v0}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    return-object v5

    .line 8
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-static {p1, v4}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v4, "system"

    .line 10
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    return-object v5

    .line 12
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_1

    const-string/jumbo p3, "system"

    .line 1
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0

    :cond_1
    if-eqz p4, :cond_4

    .line 2
    array-length p3, p4

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_4

    .line 3
    aget-object v0, p4, p3

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0

    :cond_4
    if-eqz p2, :cond_6

    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-gtz p3, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "process"

    .line 6
    invoke-static {p0, p2, p1, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    return-object p1
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-gtz p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string/jumbo p1, "taskAffinity"

    .line 2
    invoke-static {p0, p2, p1, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static checkUseInstalledOrBlocked(ILandroid/content/pm/PackageUserState;)Z
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->blocked:Z

    if-eqz p1, :cond_1

    :cond_0
    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    .line 1
    :cond_0
    iget p4, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    if-ne p4, v0, :cond_1

    move p4, v0

    goto :goto_0

    :cond_1
    move p4, v1

    .line 2
    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v2, p4, :cond_2

    return v0

    .line 3
    :cond_2
    iget-boolean p4, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz p4, :cond_8

    iget-boolean p4, p2, Landroid/content/pm/PackageUserState;->blocked:Z

    if-eqz p4, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    iget-boolean p2, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz p2, :cond_4

    return v0

    :cond_4
    and-int/lit16 p2, p0, 0x80

    if-eqz p2, :cond_6

    if-nez p3, :cond_5

    .line 5
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz p2, :cond_6

    :cond_5
    return v0

    :cond_6
    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_7

    .line 6
    iget-object p0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz p0, :cond_7

    return v0

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrBlocked(ILandroid/content/pm/PackageUserState;)Z

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
    iget-object p0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object p0

    .line 4
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 6
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

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
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrBlocked(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

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

    if-eqz p3, :cond_4

    .line 7
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/content/pm/PackageManager;->getDataDirForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :cond_4
    and-int/lit16 p3, p1, 0x80

    if-eqz p3, :cond_5

    .line 9
    iget-object p3, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object p3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :cond_5
    and-int/lit16 p3, p1, 0x400

    if-eqz p3, :cond_6

    .line 10
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 11
    :cond_6
    iget-boolean p0, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz p0, :cond_7

    .line 12
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p3, 0x200000

    or-int/2addr p0, p3

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 13
    :cond_7
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const p3, -0x200001

    and-int/2addr p0, p3

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 14
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    return-object v0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 1
    iget-object p0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object p0

    .line 2
    :cond_1
    new-instance p1, Landroid/content/pm/InstrumentationInfo;

    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/HashSet;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/HashSet<",
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

    invoke-static/range {v0 .. v9}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/HashSet;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/HashSet;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 2
    invoke-static {p2, p8}, Landroid/content/pm/PackageParser;->checkUseInstalledOrBlocked(ILandroid/content/pm/PackageUserState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 6
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 8
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 9
    invoke-static {p0, p2, p8, p9}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    iget v2, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v2, v0, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 11
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    .line 12
    :cond_1
    iget-boolean v1, p0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 13
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 15
    iput-wide p3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 16
    iput-wide p5, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    and-int/lit16 p3, p2, 0x100

    if-eqz p3, :cond_3

    .line 17
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_3
    and-int/lit16 p1, p2, 0x4000

    const/4 p3, 0x0

    if-eqz p1, :cond_6

    .line 18
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 19
    new-array p1, p1, [Landroid/content/pm/ConfigurationInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 20
    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    :cond_4
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_5
    move p1, p3

    :goto_0
    if-lez p1, :cond_6

    .line 22
    new-array p1, p1, [Landroid/content/pm/FeatureInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 23
    iget-object p4, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_6
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_c

    .line 24
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_c

    and-int/lit16 p4, p2, 0x200

    if-eqz p4, :cond_7

    .line 25
    new-array p5, p1, [Landroid/content/pm/ActivityInfo;

    iput-object p5, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_2

    :cond_7
    move p5, p3

    move p6, p5

    :goto_1
    if-ge p5, p1, :cond_9

    .line 26
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v1, :cond_8

    add-int/lit8 p6, p6, 0x1

    :cond_8
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 27
    :cond_9
    new-array p5, p6, [Landroid/content/pm/ActivityInfo;

    iput-object p5, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :goto_2
    move p5, p3

    move p6, p5

    :goto_3
    if-ge p5, p1, :cond_c

    .line 28
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 29
    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez v1, :cond_a

    if-eqz p4, :cond_b

    .line 30
    :cond_a
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 v2, p6, 0x1

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    invoke-static {v3, p2, p8, p9}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    aput-object v3, v1, p6

    move p6, v2

    :cond_b
    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_c
    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_12

    .line 31
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_12

    and-int/lit16 p4, p2, 0x200

    if-eqz p4, :cond_d

    .line 32
    new-array p5, p1, [Landroid/content/pm/ActivityInfo;

    iput-object p5, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    goto :goto_5

    :cond_d
    move p5, p3

    move p6, p5

    :goto_4
    if-ge p5, p1, :cond_f

    .line 33
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v1, :cond_e

    add-int/lit8 p6, p6, 0x1

    :cond_e
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    .line 34
    :cond_f
    new-array p5, p6, [Landroid/content/pm/ActivityInfo;

    iput-object p5, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :goto_5
    move p5, p3

    move p6, p5

    :goto_6
    if-ge p5, p1, :cond_12

    .line 35
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 36
    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez v1, :cond_10

    if-eqz p4, :cond_11

    .line 37
    :cond_10
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 v2, p6, 0x1

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    invoke-static {v3, p2, p8, p9}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    aput-object v3, v1, p6

    move p6, v2

    :cond_11
    add-int/lit8 p5, p5, 0x1

    goto :goto_6

    :cond_12
    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_18

    .line 38
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_18

    and-int/lit16 p4, p2, 0x200

    if-eqz p4, :cond_13

    .line 39
    new-array p5, p1, [Landroid/content/pm/ServiceInfo;

    iput-object p5, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    goto :goto_8

    :cond_13
    move p5, p3

    move p6, p5

    :goto_7
    if-ge p5, p1, :cond_15

    .line 40
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v1, v1, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v1, :cond_14

    add-int/lit8 p6, p6, 0x1

    :cond_14
    add-int/lit8 p5, p5, 0x1

    goto :goto_7

    .line 41
    :cond_15
    new-array p5, p6, [Landroid/content/pm/ServiceInfo;

    iput-object p5, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :goto_8
    move p5, p3

    move p6, p5

    :goto_9
    if-ge p5, p1, :cond_18

    .line 42
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    .line 43
    iget-object v1, v1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v1, v1, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez v1, :cond_16

    if-eqz p4, :cond_17

    .line 44
    :cond_16
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    add-int/lit8 v2, p6, 0x1

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Service;

    invoke-static {v3, p2, p8, p9}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    aput-object v3, v1, p6

    move p6, v2

    :cond_17
    add-int/lit8 p5, p5, 0x1

    goto :goto_9

    :cond_18
    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_1e

    .line 45
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1e

    and-int/lit16 p4, p2, 0x200

    if-eqz p4, :cond_19

    .line 46
    new-array p5, p1, [Landroid/content/pm/ProviderInfo;

    iput-object p5, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    goto :goto_b

    :cond_19
    move p5, p3

    move p6, p5

    :goto_a
    if-ge p5, p1, :cond_1b

    .line 47
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v1, v1, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v1, :cond_1a

    add-int/lit8 p6, p6, 0x1

    :cond_1a
    add-int/lit8 p5, p5, 0x1

    goto :goto_a

    .line 48
    :cond_1b
    new-array p5, p6, [Landroid/content/pm/ProviderInfo;

    iput-object p5, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :goto_b
    move p5, p3

    move p6, p5

    :goto_c
    if-ge p5, p1, :cond_1e

    .line 49
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    .line 50
    iget-object v1, v1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v1, v1, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez v1, :cond_1c

    if-eqz p4, :cond_1d

    .line 51
    :cond_1c
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    add-int/lit8 v2, p6, 0x1

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    invoke-static {v3, p2, p8, p9}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    aput-object v3, v1, p6

    move p6, v2

    :cond_1d
    add-int/lit8 p5, p5, 0x1

    goto :goto_c

    :cond_1e
    and-int/lit8 p1, p2, 0x10

    if-eqz p1, :cond_1f

    .line 52
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1f

    .line 53
    new-array p4, p1, [Landroid/content/pm/InstrumentationInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    move p4, p3

    :goto_d
    if-ge p4, p1, :cond_1f

    .line 54
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_d

    :cond_1f
    and-int/lit16 p1, p2, 0x1000

    if-eqz p1, :cond_23

    .line 55
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_20

    .line 56
    new-array p4, p1, [Landroid/content/pm/PermissionInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move p4, p3

    :goto_e
    if-ge p4, p1, :cond_20

    .line 57
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageParser$Permission;

    invoke-static {p6, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_e

    .line 58
    :cond_20
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_23

    .line 59
    new-array p4, p1, [Ljava/lang/String;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 60
    new-array p4, p1, [I

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move p4, p3

    :goto_f
    if-ge p4, p1, :cond_23

    .line 61
    iget-object p5, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 62
    iget-object p6, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object p5, p6, p4

    .line 63
    iget-object p6, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_21

    .line 64
    iget-object p6, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget p8, p6, p4

    or-int/lit8 p8, p8, 0x1

    aput p8, p6, p4

    :cond_21
    if-eqz p7, :cond_22

    .line 65
    invoke-virtual {p7, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_22

    .line 66
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget p6, p5, p4

    or-int/lit8 p6, p6, 0x2

    aput p6, p5, p4

    :cond_22
    add-int/lit8 p4, p4, 0x1

    goto :goto_f

    :cond_23
    and-int/lit8 p1, p2, 0x40

    if-eqz p1, :cond_25

    .line 67
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_24

    array-length p1, p0

    goto :goto_10

    :cond_24
    move p1, p3

    :goto_10
    if-lez p1, :cond_25

    .line 68
    new-array p2, p1, [Landroid/content/pm/Signature;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 69
    invoke-static {p0, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_25
    return-object v0
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 1
    iget-object p0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object p0

    .line 2
    :cond_1
    new-instance p1, Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 1
    iget-object p0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object p0

    .line 2
    :cond_1
    new-instance p1, Landroid/content/pm/PermissionInfo;

    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrBlocked(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_3

    .line 3
    :cond_2
    iget-object p0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object p0

    .line 4
    :cond_3
    new-instance v1, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 5
    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_4

    .line 6
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 7
    :cond_4
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrBlocked(ILandroid/content/pm/PackageUserState;)Z

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
    iget-object p0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object p0

    .line 4
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 6
    iget-object p0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static isAvailable(Landroid/content/pm/PackageUserState;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrBlocked(ILandroid/content/pm/PackageUserState;)Z

    move-result p0

    return p0
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".apk"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 7

    const-string v0, " in "

    const-string v1, "Exception reading "

    const-string v2, "PackageParser"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    const/4 v5, 0x0

    .line 2
    array-length v6, p3

    invoke-virtual {v4, p3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v3

    :catch_0
    move-exception p3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v3
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p6

    .line 1
    sget-object v0, Li/a;->AndroidManifestActivity:[I

    move-object/from16 v4, p2

    move-object/from16 v3, p4

    invoke-virtual {v4, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    iget-object v1, v7, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x17

    iget-object v15, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v16, 0x7

    const/16 v17, 0x11

    const/16 v18, 0x5

    move-object v8, v1

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    invoke-direct/range {v8 .. v18}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    iput-object v1, v7, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4
    :cond_0
    iget-object v1, v7, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p7, :cond_1

    const-string v2, "<receiver>"

    goto :goto_0

    :cond_1
    const-string v2, "<activity>"

    :goto_0
    iput-object v2, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 5
    iput-object v0, v1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    move/from16 v2, p5

    .line 6
    iput v2, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 7
    new-instance v8, Landroid/content/pm/PackageParser$Activity;

    new-instance v2, Landroid/content/pm/ActivityInfo;

    invoke-direct {v2}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v8, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    const/4 v9, 0x0

    .line 8
    aget-object v1, v5, v9

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v10

    :cond_2
    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    iget-object v11, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v11, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 12
    :cond_3
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 13
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v11, 0x1a

    iget-object v12, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    const/16 v1, 0x1b

    const/16 v11, 0x400

    .line 14
    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const-string v12, "PackageParser"

    if-eqz v1, :cond_5

    .line 15
    iget-object v13, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v1, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 16
    aget-object v14, v5, v9

    if-nez v14, :cond_4

    .line 17
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v13, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " specified invalid parentActivityName "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    aput-object v10, v5, v9

    :cond_5
    :goto_1
    const/4 v13, 0x4

    .line 20
    invoke-virtual {v0, v13, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 21
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v14, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto :goto_3

    .line 22
    :cond_6
    iget-object v14, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v10

    :goto_2
    iput-object v1, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    :goto_3
    const/16 v1, 0x8

    .line 23
    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 24
    iget-object v15, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v11, v10, v14, v5}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v15, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 25
    iget-object v10, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v9, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v10, 0x9

    .line 26
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_8

    .line 27
    iget-object v10, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v14, v11

    iput v14, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_8
    const/16 v10, 0xa

    .line 28
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 29
    iget-object v10, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v14, v14, 0x2

    iput v14, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_9
    const/16 v10, 0xb

    .line 30
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 31
    iget-object v10, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v14, v13

    iput v14, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_a
    const/16 v10, 0x15

    .line 32
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 33
    iget-object v10, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v14, v14, 0x80

    iput v14, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_b
    const/16 v10, 0x12

    .line 34
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 35
    iget-object v10, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v1, v14

    iput v1, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_c
    const/16 v1, 0xc

    .line 36
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v10, 0x10

    if-eqz v1, :cond_d

    .line 37
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v14, v10

    iput v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_d
    const/16 v1, 0xd

    .line 38
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 39
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v14, v14, 0x20

    iput v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_e
    const/16 v1, 0x13

    .line 40
    iget-object v14, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x20

    if-eqz v14, :cond_f

    move v14, v11

    goto :goto_4

    :cond_f
    move v14, v9

    :goto_4
    invoke-virtual {v0, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 41
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v14, v14, 0x40

    iput v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_10
    const/16 v1, 0x16

    .line 42
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 43
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v14, v14, 0x100

    iput v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_11
    const/16 v1, 0x1d

    .line 44
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 45
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v15, 0x400

    or-int/2addr v14, v15

    iput v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_12
    const/16 v1, 0x18

    .line 46
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 47
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v14, v14, 0x800

    iput v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_13
    if-nez p7, :cond_15

    const/16 v1, 0x19

    move/from16 v14, p8

    .line 48
    invoke-virtual {v0, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 49
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v14, v14, 0x200

    iput v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 50
    :cond_14
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v14, 0xe

    invoke-virtual {v0, v14, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 51
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v14, 0xf

    const/4 v15, -0x1

    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 52
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 53
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x14

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    goto :goto_5

    .line 54
    :cond_15
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v9, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 55
    iput v9, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    :goto_5
    const-string v10, " at "

    const-string v14, " "

    if-eqz p7, :cond_18

    const/16 v1, 0x1c

    .line 56
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 57
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v15, 0x40000000    # 2.0f

    or-int/2addr v2, v15

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 58
    iget-boolean v1, v1, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v1, :cond_16

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity exported request ignored due to singleUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v9, v1, Landroid/content/pm/ComponentInfo;->exported:Z

    :cond_16
    move v2, v11

    :cond_17
    const/16 v1, 0x1e

    .line 61
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 62
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v16, 0x20000000

    or-int v15, v15, v16

    iput v15, v1, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_18
    move v15, v2

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p7, :cond_19

    .line 64
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 65
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    iget-object v1, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v0, v1, :cond_19

    const-string v0, "Heavy-weight applications can not have receivers in main process"

    .line 66
    aput-object v0, v5, v9

    .line 67
    :cond_19
    aget-object v0, v5, v9

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_1a
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 69
    :goto_6
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v11, :cond_28

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_28

    :cond_1b
    if-eq v0, v1, :cond_27

    if-ne v0, v13, :cond_1c

    const/4 v9, 0x0

    goto :goto_6

    .line 70
    :cond_1c
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 71
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v9, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v18, v2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, v17

    move-object v5, v9

    move-object v11, v6

    move-object/from16 v6, p6

    .line 72
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_1d
    invoke-virtual {v9}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-nez v0, :cond_1e

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No actions in intent filter at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 75
    :cond_1e
    iget-object v0, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1f
    move/from16 v18, v2

    move-object v11, v6

    if-nez p7, :cond_23

    .line 76
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 77
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v9, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v5, v9

    move-object/from16 v6, p6

    .line 78
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_20
    invoke-virtual {v9}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-nez v0, :cond_21

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No actions in preferred at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 81
    :cond_21
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 83
    :cond_22
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 84
    :cond_23
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 85
    iget-object v4, v8, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v8, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_24

    const/4 v0, 0x0

    return-object v0

    :cond_24
    :goto_7
    move-object/from16 v4, p2

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    move-object v6, v11

    move/from16 v2, v18

    goto/16 :goto_9

    :cond_25
    const/4 v0, 0x0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_26

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <receiver>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 88
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <activity>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_8
    invoke-static/range {p3 .. p3}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    :cond_27
    move-object/from16 v4, p2

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    :goto_9
    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_6

    :cond_28
    if-nez v15, :cond_2a

    .line 90
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_29

    const/4 v9, 0x1

    goto :goto_a

    :cond_29
    const/4 v9, 0x0

    :goto_a
    iput-boolean v9, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    :cond_2a
    return-object v8
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p6

    .line 1
    sget-object v1, Li/a;->AndroidManifestActivityAlias:[I

    move-object/from16 v5, p2

    move-object/from16 v4, p4

    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x7

    const/16 v3, 0x400

    .line 2
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    const/16 v19, 0x0

    const/4 v15, 0x0

    if-nez v2, :cond_0

    const-string v0, "<activity-alias> does not specify android:targetActivity"

    .line 3
    aput-object v0, v6, v15

    .line 4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v19

    .line 5
    :cond_0
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v2, v6}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v19

    .line 7
    :cond_1
    iget-object v8, v7, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v8, :cond_2

    .line 8
    new-instance v14, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x8

    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v20, 0x4

    move-object v8, v14

    move-object/from16 v9, p1

    move-object/from16 v21, v10

    move-object/from16 v10, p6

    move-object v3, v14

    move/from16 v14, v16

    move v4, v15

    move-object/from16 v15, v21

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-direct/range {v8 .. v18}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    iput-object v3, v7, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v8, "<activity-alias>"

    .line 9
    iput-object v8, v3, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v4, v15

    .line 10
    :goto_0
    iget-object v3, v7, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v3, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    move/from16 v8, p5

    .line 11
    iput v8, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 12
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v15, v4

    :goto_1
    if-ge v15, v3, :cond_4

    .line 13
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Activity;

    .line 14
    iget-object v9, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v8, v19

    :goto_2
    if-nez v8, :cond_5

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<activity-alias> target activity "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found in manifest"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v19

    .line 17
    :cond_5
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 18
    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 19
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v3, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 20
    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    iput v3, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 21
    iget v3, v2, Landroid/content/pm/PackageItemInfo;->icon:I

    iput v3, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 22
    iget v3, v2, Landroid/content/pm/PackageItemInfo;->logo:I

    iput v3, v0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 23
    iget v3, v2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v3, v0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 24
    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v3, v0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 25
    iget v3, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v3, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 26
    iget-object v3, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    iput-object v3, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 27
    iget v3, v0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-nez v3, :cond_6

    .line 28
    iget v3, v2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    iput v3, v0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 29
    :cond_6
    iget v3, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v3, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 30
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v3, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 31
    iget v3, v2, Landroid/content/pm/ActivityInfo;->theme:I

    iput v3, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 32
    iget v3, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v3, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 33
    iget v3, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v3, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 34
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 35
    new-instance v8, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    invoke-direct {v8, v2, v0}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 36
    aget-object v0, v6, v4

    if-eqz v0, :cond_7

    .line 37
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v19

    :cond_7
    const/4 v0, 0x5

    .line 38
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 39
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v2, Landroid/content/pm/ComponentInfo;->exported:Z

    :cond_8
    const/4 v10, 0x3

    .line 40
    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 41
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    move-object/from16 v0, v19

    :goto_3
    iput-object v0, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    :cond_a
    const/16 v0, 0x9

    const/16 v2, 0x400

    .line 42
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    const-string v11, "PackageParser"

    if-eqz v0, :cond_c

    .line 43
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v0, v6}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    aget-object v3, v6, v4

    if-nez v3, :cond_b

    .line 45
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_4

    .line 46
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " specified invalid parentActivityName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    aput-object v19, v6, v4

    .line 48
    :cond_c
    :goto_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    aget-object v0, v6, v4

    if-eqz v0, :cond_d

    return-object v19

    .line 50
    :cond_d
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 51
    :goto_5
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v15, 0x1

    if-eq v0, v15, :cond_16

    if-ne v0, v10, :cond_e

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v12, :cond_16

    :cond_e
    if-eq v0, v10, :cond_15

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    goto :goto_5

    .line 52
    :cond_f
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v13, " "

    if-eqz v0, :cond_12

    .line 53
    new-instance v14, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v14, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v16, v4

    move v4, v15

    move-object v5, v14

    move-object/from16 v6, p6

    .line 54
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return-object v19

    .line 55
    :cond_10
    invoke-virtual {v14}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-nez v0, :cond_11

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No actions in intent filter at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 57
    :cond_11
    iget-object v0, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    move/from16 v16, v4

    .line 58
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 59
    iget-object v4, v8, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v8, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_14

    return-object v19

    .line 60
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <activity-alias>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static/range {p3 .. p3}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_14
    :goto_6
    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move/from16 v4, v16

    goto/16 :goto_5

    :cond_15
    move-object/from16 v5, p2

    move-object/from16 v6, p6

    goto/16 :goto_5

    :cond_16
    move/from16 v16, v4

    if-nez v9, :cond_18

    .line 62
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_17

    goto :goto_7

    :cond_17
    move/from16 v15, v16

    :goto_7
    iput-boolean v15, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    :cond_18
    return-object v8
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    :cond_1
    if-eq v1, v3, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    iget-object v6, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageParser"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return v2
.end method

.method private parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    .line 1
    iget-object v6, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    iget-object v0, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3
    sget-object v1, Li/a;->AndroidManifestApplication:[I

    invoke-virtual {v11, v12, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v14, 0x3

    const/4 v15, 0x0

    .line 4
    invoke-virtual {v7, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    const/16 v8, -0x6c

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0, v1, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    iput v8, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v15

    :cond_0
    const/4 v5, 0x4

    const/16 v1, 0x400

    .line 8
    invoke-virtual {v7, v5, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {v0, v2, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    :cond_1
    const/16 v2, 0x11

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    iget v2, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v2, 0x10

    .line 12
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 13
    invoke-static {v0, v2, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/16 v0, 0x12

    .line 14
    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_2
    const/16 v0, 0x15

    .line 16
    invoke-virtual {v7, v0, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    iput v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 18
    :cond_3
    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 19
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v6, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_4

    .line 20
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_4
    const/4 v0, 0x2

    .line 21
    invoke-virtual {v7, v0, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v6, Landroid/content/pm/PackageItemInfo;->icon:I

    const/16 v2, 0x16

    .line 22
    invoke-virtual {v7, v2, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v6, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 23
    invoke-virtual {v7, v15, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v6, Landroid/content/pm/ApplicationInfo;->theme:I

    const/16 v2, 0xd

    .line 24
    invoke-virtual {v7, v2, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v6, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    and-int/lit8 v2, p5, 0x1

    const/16 v3, 0x8

    if-eqz v2, :cond_5

    .line 25
    invoke-virtual {v7, v3, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 26
    iget v2, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v2, v3

    iput v2, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_5
    const/16 v2, 0x1b

    .line 27
    invoke-virtual {v7, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 28
    iput-boolean v4, v10, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    :cond_6
    const/16 v2, 0x1c

    .line 29
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_7

    .line 31
    iput-object v2, v10, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    :cond_7
    const/16 v2, 0x1d

    .line 32
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_8

    .line 34
    iput-object v2, v10, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    :cond_8
    const/16 v2, 0xa

    .line 35
    invoke-virtual {v7, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 36
    iget v2, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v2

    iput v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_9
    const/16 v0, 0x14

    .line 37
    invoke-virtual {v7, v0, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 38
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_a
    const/16 v0, 0x17

    .line 39
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v14, 0xe

    if-lt v2, v14, :cond_b

    move v2, v4

    goto :goto_0

    :cond_b
    move v2, v15

    :goto_0
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    const/4 v0, 0x7

    .line 40
    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v5

    iput v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 42
    :cond_c
    invoke-virtual {v7, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_d
    const/4 v0, 0x5

    .line 44
    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 45
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_e
    const/16 v0, 0xf

    .line 46
    invoke-virtual {v7, v0, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_f
    const/16 v0, 0x18

    .line 48
    invoke-virtual {v7, v0, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 49
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    iput v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_10
    const/16 v0, 0x1a

    .line 50
    invoke-virtual {v7, v0, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 51
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    iput v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_11
    const/4 v0, 0x6

    .line 52
    invoke-virtual {v7, v0, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_12
    const/4 v0, 0x0

    :goto_1
    iput-object v0, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 54
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xc

    if-lt v0, v3, :cond_13

    .line 55
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 56
    :cond_13
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_2
    iget-object v2, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v2, v0, v13}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 58
    aget-object v0, v13, v15

    if-nez v0, :cond_15

    .line 59
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xb

    if-lt v0, v3, :cond_14

    .line 60
    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 61
    :cond_14
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v2, v0

    .line 62
    iget-object v0, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v14, v9, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move/from16 v3, p5

    move v8, v4

    move-object v4, v14

    move v14, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/16 v0, 0x9

    .line 63
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_4

    :cond_15
    move v8, v4

    move v14, v5

    :goto_4
    const/16 v0, 0x19

    .line 64
    invoke-virtual {v7, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v6, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 65
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    aget-object v0, v13, v15

    if-eqz v0, :cond_16

    const/16 v7, -0x6c

    .line 67
    iput v7, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v15

    :cond_16
    const/16 v7, -0x6c

    .line 68
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 69
    :cond_17
    :goto_5
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_2f

    const/4 v5, 0x3

    if-ne v0, v5, :cond_18

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v6, :cond_2f

    :cond_18
    if-eq v0, v5, :cond_17

    if-ne v0, v14, :cond_19

    goto :goto_5

    .line 70
    :cond_19
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v18, v5

    move/from16 v5, p5

    move/from16 v19, v6

    move-object/from16 v6, p6

    move/from16 v20, v7

    move/from16 v7, v16

    move/from16 v14, v20

    move/from16 v8, v17

    .line 72
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 73
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v15

    .line 74
    :cond_1a
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_8

    :cond_1c
    move/from16 v18, v5

    move/from16 v19, v6

    move v14, v7

    const-string v1, "receiver"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 76
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 77
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v15

    .line 78
    :cond_1d
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1e
    const-string/jumbo v1, "service"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 80
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 81
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v15

    .line 82
    :cond_1f
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_20
    const-string v1, "provider"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 84
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v0

    if-nez v0, :cond_21

    .line 85
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v15

    .line 86
    :cond_21
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_22
    const-string v1, "activity-alias"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 88
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    if-nez v0, :cond_23

    .line 89
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v15

    .line 90
    :cond_23
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 91
    :cond_24
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 92
    iget-object v4, v10, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v10, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v0, :cond_1b

    .line 93
    iput v14, v9, Landroid/content/pm/PackageParser;->mParseError:I

    return v15

    :cond_25
    const-string v1, "library"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 95
    sget-object v0, Li/a;->AndroidManifestLibrary:[I

    invoke-virtual {v11, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_27

    .line 98
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-nez v0, :cond_26

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 100
    :cond_26
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 101
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_27
    invoke-static/range {p3 .. p3}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    :cond_28
    const-string/jumbo v1, "uses-library"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 104
    sget-object v0, Li/a;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v11, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 106
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_2c

    if-eqz v3, :cond_2a

    .line 108
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-nez v0, :cond_29

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 110
    :cond_29
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 111
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 112
    :cond_2a
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-nez v0, :cond_2b

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 114
    :cond_2b
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 115
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_2c
    :goto_7
    invoke-static/range {p3 .. p3}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_2d
    const/4 v2, 0x1

    const-string/jumbo v1, "uses-package"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 118
    invoke-static/range {p3 .. p3}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_8
    move v8, v2

    move v7, v14

    move/from16 v6, v19

    const/4 v14, 0x4

    goto/16 :goto_5

    .line 119
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <application>: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageParser"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static/range {p3 .. p3}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_2f
    move v2, v8

    return v2
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 14

    move-object v7, p0

    .line 1
    sget-object v0, Li/a;->AndroidManifestInstrumentation:[I

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 2
    iget-object v0, v7, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_0

    .line 3
    new-instance v11, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x6

    move-object v0, v11

    move-object v1, p1

    move-object/from16 v2, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII)V

    iput-object v11, v7, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string v0, "<instrumentation>"

    .line 4
    iput-object v0, v11, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, v7, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v10, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 6
    new-instance v11, Landroid/content/pm/PackageParser$Instrumentation;

    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v11, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    const/4 v0, 0x0

    .line 7
    aget-object v1, p5, v0

    const/16 v12, -0x6c

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    iput v12, v7, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v13

    :cond_1
    const/4 v1, 0x3

    .line 10
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, v11, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v13

    :goto_0
    iput-object v1, v2, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 12
    iget-object v1, v11, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v2, 0x4

    invoke-virtual {v10, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 13
    iget-object v1, v11, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v2, 0x5

    invoke-virtual {v10, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 14
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    iget-object v1, v11, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v1, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "<instrumentation> does not specify targetPackage"

    .line 16
    aput-object v1, p5, v0

    .line 17
    iput v12, v7, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v13

    :cond_3
    const-string v4, "<instrumentation>"

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v5, v11

    move-object/from16 v6, p5

    .line 18
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    iput v12, v7, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v13

    :cond_4
    move-object v0, p1

    .line 20
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v11
.end method

.method private parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 1
    sget-object v3, Li/a;->AndroidManifestIntentFilter:[I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 2
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 3
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 4
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 5
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    iput v7, v2, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v7, :cond_0

    .line 6
    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_0
    const/4 v6, 0x1

    .line 7
    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v2, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    const/4 v7, 0x3

    .line 8
    invoke-virtual {v3, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v2, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 9
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 11
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v6, :cond_16

    if-ne v8, v7, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_16

    :cond_1
    if-eq v8, v7, :cond_15

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "action"

    .line 13
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, ""

    const-string v12, "No value supplied for <android:name>"

    const-string v13, "name"

    const-string v14, "http://schemas.android.com/apk/res/android"

    if-eqz v10, :cond_5

    .line 14
    invoke-interface {v1, v14, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    if-ne v8, v11, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 16
    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 17
    :cond_4
    :goto_1
    aput-object v12, p6, v5

    return v5

    :cond_5
    const-string v10, "category"

    .line 18
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 19
    invoke-interface {v1, v14, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    if-ne v8, v11, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 21
    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 22
    :cond_7
    :goto_2
    aput-object v12, p6, v5

    return v5

    :cond_8
    const-string v10, "data"

    .line 23
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 24
    sget-object v8, Li/a;->AndroidManifestData:[I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 25
    invoke-virtual {v8, v5, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 26
    :try_start_0
    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 27
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p6, v5

    .line 28
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return v5

    .line 29
    :cond_9
    :goto_3
    invoke-virtual {v8, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 30
    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_a
    const/4 v10, 0x7

    .line 31
    invoke-virtual {v8, v10, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 32
    invoke-virtual {v2, v10, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_b
    const/16 v10, 0x8

    .line 33
    invoke-virtual {v8, v10, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 34
    invoke-virtual {v2, v10, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_c
    const/16 v10, 0x9

    .line 35
    invoke-virtual {v8, v10, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    if-nez p4, :cond_d

    const-string/jumbo v0, "sspPattern not allowed here; ssp must be literal"

    .line 36
    aput-object v0, p6, v5

    return v5

    .line 37
    :cond_d
    invoke-virtual {v2, v10, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 38
    :cond_e
    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-virtual {v8, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_f

    .line 40
    invoke-virtual {v2, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_f
    invoke-virtual {v8, v9, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 42
    invoke-virtual {v2, v9, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_10
    const/4 v9, 0x5

    .line 43
    invoke-virtual {v8, v9, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 44
    invoke-virtual {v2, v9, v6}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_11
    const/4 v9, 0x6

    .line 45
    invoke-virtual {v8, v9, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    if-nez p4, :cond_12

    const-string v0, "pathPattern not allowed here; path must be literal"

    .line 46
    aput-object v0, p6, v5

    return v5

    .line 47
    :cond_12
    invoke-virtual {v2, v9, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 48
    :cond_13
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 50
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <intent-filter>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, p0

    iget-object v10, v9, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "PackageParser"

    invoke-static {v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_15
    :goto_4
    move-object v9, p0

    goto/16 :goto_0

    :cond_16
    move-object v9, p0

    const-string v0, "android.intent.category.DEFAULT"

    .line 52
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    return v6
.end method

.method private parseKeys(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p5

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    move v3, v1

    move-object v4, v2

    .line 3
    :cond_0
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, p5, :cond_7

    :cond_1
    if-ne v5, v7, :cond_2

    .line 4
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "publicKey"

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "PackageParser"

    if-eqz v6, :cond_4

    .line 7
    sget-object v4, Li/a;->PublicKey:[I

    invoke-virtual {p2, p4, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v5}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    if-nez v5, :cond_3

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No valid key in \'publicKey\' tag at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_2
    move-object v4, v5

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 13
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_4
    const-string v6, "keyset"

    .line 15
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v4, :cond_5

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'keyset\' not in \'publicKey\' tag at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 17
    :cond_5
    sget-object v5, Li/a;->KeySet:[I

    invoke-virtual {p2, p4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 18
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 21
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <keys>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {p3}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 23
    :cond_7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Ljava/util/Map;

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/security/PublicKey;

    .line 26
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    .line 27
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 28
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Set;

    invoke-interface {p5, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 30
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 31
    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Ljava/util/Map;

    invoke-interface {v1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    return v6
.end method

.method private parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .line 1
    sget-object v0, Li/a;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const/4 p3, 0x0

    .line 3
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p2, "<meta-data> requires an android:name attribute"

    .line 4
    aput-object p2, p5, p3

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 7
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 11
    iget p5, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne p5, v4, :cond_4

    .line 12
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 13
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x12

    if-ne p5, v1, :cond_6

    .line 14
    iget p5, v3, Landroid/util/TypedValue;->data:I

    if-eqz p5, :cond_5

    move p3, v2

    :cond_5
    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    const/16 p3, 0x10

    if-lt p5, p3, :cond_7

    const/16 p3, 0x1f

    if-gt p5, p3, :cond_7

    .line 15
    iget p3, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    const/4 p3, 0x4

    if-ne p5, p3, :cond_8

    .line 16
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result p3

    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 17
    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " at "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "PackageParser"

    invoke-static {p5, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    const-string p4, "<meta-data> requires an android:value or android:resource attribute"

    .line 18
    aput-object p4, p5, p3

    move-object p4, v1

    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-static {p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object p4
.end method

.method private parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    const/4 v12, 0x0

    .line 32
    iput-object v12, v7, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 33
    iput-object v12, v7, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 34
    iput-object v12, v7, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 35
    iput-object v12, v7, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 36
    invoke-static {v9, v9, v10, v11}, Landroid/content/pm/PackageParser;->parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, -0x6a

    .line 37
    iput v0, v7, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v12

    .line 38
    :cond_0
    iget-boolean v1, v7, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    const-string v1, "coreApp"

    .line 39
    invoke-interface {v9, v12, v1, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    iput v13, v7, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v12

    .line 41
    :cond_1
    new-instance v15, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v15, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 42
    sget-object v1, Li/a;->AndroidManifest:[I

    invoke-virtual {v8, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v15, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    const/4 v6, 0x2

    .line 44
    invoke-virtual {v1, v6, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 46
    :cond_2
    invoke-virtual {v1, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    if-eqz v2, :cond_4

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 48
    invoke-static {v2, v13}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "android"

    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v14

    const/16 v0, -0x6b

    .line 51
    iput v0, v7, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v12

    .line 52
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v15, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 54
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, -0x1

    const/4 v4, 0x4

    .line 55
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v15, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 56
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    and-int/lit8 v0, v10, 0x10

    if-eqz v0, :cond_5

    .line 57
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_5
    and-int/lit8 v0, v10, 0x20

    if-eqz v0, :cond_6

    .line 58
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 59
    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v0, v13

    move v1, v0

    move v2, v1

    move/from16 v17, v2

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v16, v14

    .line 60
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const-string v14, "PackageParser"

    if-eq v6, v13, :cond_38

    if-ne v6, v5, :cond_7

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v3, :cond_38

    :cond_7
    if-eq v6, v5, :cond_37

    if-ne v6, v4, :cond_8

    goto/16 :goto_10

    .line 61
    :cond_8
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v13, "application"

    .line 62
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v16, :cond_9

    const-string v6, "<manifest> has more than one <application>"

    .line 63
    invoke-static {v14, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_10

    :cond_9
    move v13, v0

    move-object/from16 v0, p0

    move v14, v1

    move-object v1, v15

    move v6, v2

    move-object/from16 v2, p1

    move/from16 v22, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v24, v6

    move-object/from16 v6, p4

    .line 65
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-object v12

    :cond_a
    move-object v0, v12

    move/from16 v2, v24

    const/4 v1, 0x4

    const/4 v12, 0x1

    const/16 v16, 0x1

    const/16 v20, 0x3

    const/16 v21, 0x2

    goto/16 :goto_f

    :cond_b
    move v13, v0

    move v5, v1

    move/from16 v24, v2

    move/from16 v22, v3

    const-string v0, "keys"

    .line 66
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p2

    move v6, v5

    move-object/from16 v5, p4

    .line 67
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseKeys(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return-object v12

    :cond_c
    move/from16 v23, v6

    move-object v0, v12

    :goto_1
    move/from16 v10, v24

    :goto_2
    const/4 v1, 0x4

    const/4 v12, 0x1

    const/16 v20, 0x3

    const/16 v21, 0x2

    :goto_3
    move/from16 v25, v19

    move/from16 v19, v17

    move/from16 v17, v18

    move/from16 v18, v25

    goto/16 :goto_e

    :cond_d
    const-string v0, "permission-group"

    .line 68
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v14, v5

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    .line 69
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    move-result-object v0

    if-nez v0, :cond_e

    return-object v12

    :cond_e
    move-object v0, v12

    move/from16 v23, v14

    goto :goto_1

    :cond_f
    const-string v0, "permission"

    .line 70
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p2

    move v6, v5

    move-object/from16 v5, p4

    .line 71
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v12

    :cond_10
    const-string v0, "permission-tree"

    .line 72
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p2

    move v6, v5

    move-object/from16 v5, p4

    .line 73
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v12

    :cond_11
    const-string/jumbo v0, "uses-permission"

    .line 74
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p2

    move v6, v5

    move-object/from16 v5, p4

    .line 75
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return-object v12

    :cond_12
    const-string/jumbo v0, "uses-configuration"

    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 77
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 78
    sget-object v1, Li/a;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {v8, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    const/4 v3, 0x1

    .line 80
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    const/4 v4, 0x2

    .line 81
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 82
    iget v6, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v6, v3

    iput v6, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_13
    const/4 v3, 0x3

    .line 83
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    const/4 v6, 0x4

    .line 84
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 85
    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 86
    :cond_14
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v23, v5

    move v1, v6

    move-object v0, v12

    move/from16 v10, v24

    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_15
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string/jumbo v0, "uses-feature"

    .line 89
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 90
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 91
    sget-object v1, Li/a;->AndroidManifestUsesFeature:[I

    invoke-virtual {v8, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v6, 0x0

    .line 92
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v14, :cond_16

    const/4 v14, 0x1

    .line 93
    invoke-virtual {v1, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    goto :goto_5

    :cond_16
    const/4 v14, 0x1

    .line 94
    :goto_5
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 95
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v14

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 96
    :cond_17
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-nez v1, :cond_18

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 99
    :cond_18
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_19

    .line 101
    new-instance v1, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v1}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 102
    iget v0, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v0, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 103
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_19
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v23, v5

    move-object v0, v12

    move/from16 v10, v24

    const/4 v1, 0x4

    goto :goto_4

    :cond_1a
    const-string/jumbo v0, "uses-sdk"

    .line 105
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 106
    sget v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v0, :cond_25

    .line 107
    sget-object v1, Li/a;->AndroidManifestUsesSdk:[I

    invoke-virtual {v8, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 109
    iget v2, v6, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_1b

    iget-object v2, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1b

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 111
    :cond_1b
    iget v2, v6, Landroid/util/TypedValue;->data:I

    move v14, v2

    move/from16 v20, v14

    move-object v2, v12

    move-object v6, v2

    const/4 v4, 0x1

    goto :goto_7

    :cond_1c
    move-object v2, v12

    :goto_6
    move-object v6, v2

    const/4 v4, 0x1

    const/4 v14, 0x0

    const/16 v20, 0x0

    .line 112
    :goto_7
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    if-eqz v12, :cond_1e

    .line 113
    iget v4, v12, Landroid/util/TypedValue;->type:I

    if-ne v4, v3, :cond_1d

    iget-object v4, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1d

    .line 114
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_8

    .line 115
    :cond_1d
    iget v4, v12, Landroid/util/TypedValue;->data:I

    goto :goto_9

    :cond_1e
    :goto_8
    move/from16 v4, v20

    .line 116
    :goto_9
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string v1, " (current platform is "

    const-string v12, " but this is a release platform."

    const-string v3, ")"

    const-string v10, "Requires development platform "

    if-eqz v2, :cond_20

    .line 117
    sget-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_21

    if-eqz v0, :cond_1f

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v11, v1

    goto :goto_a

    :cond_1f
    const/4 v1, 0x0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v1

    :goto_a
    const/16 v0, -0xc

    .line 120
    iput v0, v7, Landroid/content/pm/PackageParser;->mParseError:I

    :goto_b
    const/4 v0, 0x0

    return-object v0

    :cond_20
    if-le v14, v0, :cond_21

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires newer sdk version #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (current version is #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v11, v1

    const/16 v0, -0xc

    .line 122
    iput v0, v7, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_b

    :cond_21
    if-eqz v6, :cond_24

    .line 123
    sget-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    if-eqz v0, :cond_22

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v11, v1

    goto :goto_c

    :cond_22
    const/4 v1, 0x0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v1

    :goto_c
    const/16 v0, -0xc

    .line 126
    iput v0, v7, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_b

    .line 127
    :cond_23
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v1, 0x2710

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_d

    .line 128
    :cond_24
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 129
    :cond_25
    :goto_d
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    move/from16 v23, v5

    move/from16 v10, v24

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_26
    const-string/jumbo v0, "supports-screens"

    .line 130
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 131
    sget-object v0, Li/a;->AndroidManifestSupportsScreens:[I

    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 132
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 133
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 134
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    move/from16 v10, v24

    const/4 v12, 0x1

    .line 135
    invoke-virtual {v0, v12, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    const/4 v4, 0x2

    .line 136
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    const/4 v5, 0x3

    .line 137
    invoke-virtual {v0, v5, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    const/4 v10, 0x5

    move/from16 v13, v17

    .line 138
    invoke-virtual {v0, v10, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v17

    move/from16 v10, v18

    const/4 v13, 0x4

    .line 139
    invoke-virtual {v0, v13, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v18

    move/from16 v10, v19

    .line 140
    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v19

    .line 141
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    move v14, v1

    move/from16 v21, v4

    move/from16 v20, v5

    move v1, v13

    const/4 v0, 0x0

    move v13, v6

    goto/16 :goto_f

    :cond_27
    move/from16 v10, v24

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v12, 0x1

    const/16 v20, 0x3

    move/from16 v25, v19

    move/from16 v19, v17

    move/from16 v17, v18

    move/from16 v18, v25

    const-string v0, "protected-broadcast"

    .line 143
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 144
    sget-object v0, Li/a;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_29

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_29

    .line 147
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v0, :cond_28

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 149
    :cond_28
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 150
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_29
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    move v1, v2

    move/from16 v21, v4

    move/from16 v23, v5

    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_2a
    const-string v0, "instrumentation"

    .line 152
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object/from16 v0, p0

    move-object v1, v15

    move v6, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v21, v4

    move-object/from16 v4, p2

    move/from16 v23, v5

    move-object/from16 v5, p4

    .line 153
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v0

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    return-object v0

    :cond_2b
    const/4 v0, 0x0

    move v1, v6

    goto :goto_e

    :cond_2c
    move v1, v2

    move/from16 v21, v4

    move/from16 v23, v5

    const/4 v0, 0x0

    const-string v2, "original-package"

    .line 154
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 155
    sget-object v2, Li/a;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 156
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 157
    iget-object v3, v15, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 158
    iget-object v3, v15, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v3, :cond_2d

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v15, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 160
    iget-object v3, v15, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v3, v15, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 161
    :cond_2d
    iget-object v3, v15, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2e
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_e

    :cond_2f
    const-string v2, "adopt-permissions"

    .line 164
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 165
    sget-object v2, Li/a;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 166
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_31

    .line 168
    iget-object v2, v15, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v2, :cond_30

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v15, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 170
    :cond_30
    iget-object v2, v15, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_31
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_e
    move v2, v10

    move/from16 v14, v23

    move/from16 v25, v18

    move/from16 v18, v17

    move/from16 v17, v19

    move/from16 v19, v25

    :goto_f
    move/from16 v10, p3

    move v4, v1

    move v1, v14

    move/from16 v5, v20

    move/from16 v3, v22

    const/4 v14, 0x0

    move/from16 v25, v12

    move-object v12, v0

    move v0, v13

    move/from16 v13, v25

    goto/16 :goto_0

    :cond_32
    const-string/jumbo v2, "uses-gl-texture"

    .line 172
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 173
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_11

    :cond_33
    const-string v2, "compatible-screens"

    .line 174
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 175
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_11

    :cond_34
    const-string/jumbo v2, "supports-input"

    .line 176
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 177
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_11

    :cond_35
    const-string v2, "eat-comment"

    .line 178
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 179
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_11

    .line 180
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <manifest>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_11

    :cond_37
    :goto_10
    move v13, v0

    move/from16 v23, v1

    move v10, v2

    move/from16 v22, v3

    move v1, v4

    move/from16 v20, v5

    move-object v0, v12

    const/4 v12, 0x1

    const/16 v21, 0x2

    move/from16 v25, v19

    move/from16 v19, v17

    move/from16 v17, v18

    move/from16 v18, v25

    :goto_11
    move v4, v1

    move v2, v10

    move/from16 v5, v20

    move/from16 v3, v22

    move/from16 v1, v23

    const/4 v14, 0x0

    move/from16 v10, p3

    move/from16 v25, v12

    move-object v12, v0

    move v0, v13

    move/from16 v13, v25

    move/from16 v26, v18

    move/from16 v18, v17

    move/from16 v17, v19

    move/from16 v19, v26

    goto/16 :goto_0

    :cond_38
    move v13, v0

    move/from16 v23, v1

    move v10, v2

    move v1, v4

    move-object v0, v12

    move/from16 v25, v19

    move/from16 v19, v17

    move/from16 v17, v18

    move/from16 v18, v25

    if-nez v16, :cond_39

    .line 182
    iget-object v2, v15, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "<manifest> does not contain an <application> or <instrumentation>"

    const/4 v3, 0x0

    .line 183
    aput-object v2, v11, v3

    const/16 v2, -0x6d

    .line 184
    iput v2, v7, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_12

    :cond_39
    const/4 v3, 0x0

    .line 185
    :goto_12
    sget-object v2, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v2, v2

    move-object v12, v0

    move v0, v3

    :goto_13
    if-ge v0, v2, :cond_3d

    .line 186
    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v4, v4, v0

    .line 187
    iget-object v5, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v6, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v5, v6, :cond_3a

    goto :goto_15

    .line 188
    :cond_3a
    iget-object v5, v15, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v6, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    if-nez v12, :cond_3b

    .line 189
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 190
    iget-object v5, v15, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": compat added "

    .line 191
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_3b
    const/16 v5, 0x20

    .line 192
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    :goto_14
    iget-object v5, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v5, v15, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v4, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v4, v15, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3d
    :goto_15
    if-eqz v12, :cond_3e

    .line 196
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_3e
    sget-object v0, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    array-length v0, v0

    move v2, v3

    :goto_16
    if-ge v2, v0, :cond_42

    .line 198
    sget-object v4, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    aget-object v4, v4, v2

    .line 199
    iget-object v5, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v6, v4, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    if-ge v5, v6, :cond_41

    iget-object v5, v15, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v6, v4, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    goto :goto_18

    :cond_3f
    move v5, v3

    .line 200
    :goto_17
    iget-object v6, v4, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    array-length v8, v6

    if-ge v5, v8, :cond_41

    .line 201
    aget-object v6, v6, v5

    .line 202
    iget-object v8, v15, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    .line 203
    iget-object v8, v15, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v6, v15, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_41
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_42
    if-ltz v10, :cond_43

    if-lez v10, :cond_44

    .line 205
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_44

    .line 206
    :cond_43
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_44
    if-eqz v23, :cond_45

    .line 207
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_45
    if-ltz v13, :cond_46

    if-lez v13, :cond_47

    .line 208
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_47

    .line 209
    :cond_46
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_47
    if-ltz v19, :cond_48

    if-lez v19, :cond_49

    .line 210
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_49

    .line 211
    :cond_48
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x80000

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_49
    if-ltz v17, :cond_4a

    if-lez v17, :cond_4b

    .line 212
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_4b

    .line 213
    :cond_4a
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_4b
    if-ltz v18, :cond_4c

    if-lez v18, :cond_4d

    .line 214
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_4d

    .line 215
    :cond_4c
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 216
    :cond_4d
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_4e

    move v14, v3

    .line 217
    :goto_19
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_4e

    .line 218
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v14, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_19

    :cond_4e
    return-object v15
.end method

.method private parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p5, p6, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p6

    if-nez p6, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not specify android:name"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    return v0

    .line 3
    :cond_0
    iget-object p4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p4, p4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p4, p6, p3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez p3, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p5, p8, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_2

    .line 5
    iput p3, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    const/4 p3, 0x0

    .line 6
    iput-object p3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 7
    :cond_2
    invoke-virtual {p5, p9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_3

    .line 8
    iput p3, p2, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 9
    :cond_3
    invoke-virtual {p5, p7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 10
    iget p4, p3, Landroid/util/TypedValue;->resourceId:I

    iput p4, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez p4, :cond_4

    .line 11
    invoke-virtual {p3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 12
    :cond_4
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object p1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method private static parsePackageLite(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$PackageLite;
    .locals 11

    .line 20
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const-string p0, "No start tag found"

    .line 21
    aput-object p0, p4, v4

    return-object v3

    .line 22
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "manifest"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "No <manifest> tag"

    .line 23
    aput-object p0, p4, v4

    return-object v3

    :cond_2
    const-string v0, "package"

    .line 24
    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_6

    .line 26
    :cond_3
    invoke-static {v0, v2}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "android"

    .line 27
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "<manifest> specifies bad package name \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p4, v4

    return-object v3

    :cond_4
    const/4 v3, -0x1

    move v7, v3

    move v5, v4

    move v6, v5

    move v8, v6

    .line 29
    :goto_1
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 30
    invoke-interface {p2, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "installLocation"

    .line 31
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 32
    invoke-interface {p2, v5, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v7

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    const-string/jumbo v10, "versionCode"

    .line 33
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 34
    invoke-interface {p2, v5, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v8

    goto :goto_2

    :cond_6
    :goto_3
    if-lt v6, v1, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 35
    :cond_8
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/2addr v1, v2

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    :cond_9
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v2, :cond_c

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-lt v6, v1, :cond_c

    :cond_a
    if-eq v4, v5, :cond_9

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    goto :goto_5

    .line 38
    :cond_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, v1, :cond_9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "package-verifier"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/VerifierInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 40
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 41
    :cond_c
    new-instance p0, Landroid/content/pm/PackageParser$PackageLite;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v8, v7, v3}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;IILjava/util/List;)V

    return-object p0

    :cond_d
    :goto_6
    const-string p0, "<manifest> does not specify package"

    .line 42
    aput-object p0, p4, v4

    return-object v3
.end method

.method public static parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 22

    move-object/from16 v1, p0

    const-string v2, "PackageParser"

    .line 1
    :try_start_0
    new-instance v15, Landroid/content/res/AssetManager;

    invoke-direct {v15}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 2
    :try_start_1
    sget v21, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v15

    move-object v3, v15

    move v15, v0

    :try_start_2
    invoke-virtual/range {v4 .. v21}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 3
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    const/4 v4, 0x0

    .line 4
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    invoke-virtual {v5}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 6
    new-instance v6, Landroid/content/res/Resources;

    invoke-direct {v6, v3, v5, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const-string v4, "AndroidManifest.xml"

    .line 7
    invoke-virtual {v3, v0, v4}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    move/from16 v0, p1

    .line 8
    :try_start_3
    invoke-static {v6, v4, v4, v0, v5}, Landroid/content/pm/PackageParser;->parsePackageLite(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    .line 9
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 10
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 11
    :try_start_4
    invoke-static {v2, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v4, :cond_2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 12
    invoke-static {v2, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_2

    .line 13
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 14
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsePackageLite error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v1, 0x0

    return-object v1

    :cond_3
    return-object v0

    :goto_3
    if-eqz v4, :cond_4

    .line 16
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 17
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    throw v0

    :catch_2
    move-exception v0

    move-object v15, v3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v3, v15

    goto :goto_4

    :catch_4
    move-exception v0

    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_5

    .line 18
    invoke-virtual {v15}, Landroid/content/res/AssetManager;->close()V

    .line 19
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p2, v1, :cond_1

    const-string p0, "No start tag found"

    .line 2
    aput-object p0, p3, v2

    return-object v3

    .line 3
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "manifest"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "No <manifest> tag"

    .line 4
    aput-object p0, p3, v2

    return-object v3

    :cond_2
    const-string p0, "package"

    .line 5
    invoke-interface {p1, v3, p0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {p0, v0}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "android"

    .line 8
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<manifest> specifies bad package name \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v2

    return-object v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "<manifest> does not specify package"

    .line 11
    aput-object p0, p3, v2

    return-object v3
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1
    new-instance v12, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v12, v11}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2
    sget-object v0, Li/a;->AndroidManifestPermission:[I

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    invoke-virtual {v13, v14, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 3
    iget-object v2, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v4, "<permission>"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p5

    move-object v5, v15

    invoke-direct/range {v0 .. v9}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v0

    const/4 v7, 0x0

    const/16 v8, -0x6c

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    iput v8, v10, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v7

    .line 6
    :cond_0
    iget-object v0, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v1, 0x4

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 7
    iget-object v0, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 9
    :cond_1
    iget-object v0, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 10
    iget-object v0, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v1, 0x3

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 11
    iget-object v0, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v1, 0x7

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 12
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    iget-object v0, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const-string v0, "<permission> does not specify protectionLevel"

    .line 14
    aput-object v0, p5, v2

    .line 15
    iput v8, v10, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v7

    .line 16
    :cond_2
    invoke-static {v1}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 17
    iget-object v0, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v1, v0, 0xf0

    if-eqz v1, :cond_3

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const-string v0, "<permission>  protectionLevel specifies a flag but is not based on signature type"

    .line 18
    aput-object v0, p5, v2

    .line 19
    iput v8, v10, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v7

    :cond_3
    const-string v4, "<permission>"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v5, v12

    move-object/from16 v6, p5

    .line 20
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    iput v8, v10, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v7

    .line 22
    :cond_4
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v12
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1
    new-instance v12, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-direct {v12, v11}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2
    sget-object v0, Li/a;->AndroidManifestPermissionGroup:[I

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    invoke-virtual {v13, v14, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 3
    iget-object v2, v12, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const-string v4, "<permission-group>"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p6

    move-object v5, v15

    invoke-direct/range {v0 .. v9}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v0

    const/4 v7, 0x0

    const/16 v8, -0x6c

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    iput v8, v10, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v7

    .line 6
    :cond_0
    iget-object v0, v12, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 7
    iget-object v0, v12, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v1, 0x6

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 8
    iget-object v0, v12, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v1, 0x3

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 9
    iget-object v0, v12, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget v1, v0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    if-lez v1, :cond_1

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 10
    iput v2, v0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 11
    :cond_1
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    const-string v4, "<permission-group>"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v5, v12

    move-object/from16 v6, p6

    .line 12
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iput v8, v10, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v7

    .line 14
    :cond_2
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v12
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1
    new-instance v12, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v12, v11}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2
    sget-object v0, Li/a;->AndroidManifestPermissionTree:[I

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    invoke-virtual {v13, v14, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 3
    iget-object v2, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v4, "<permission-tree>"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p5

    move-object v5, v15

    invoke-direct/range {v0 .. v9}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIII)Z

    move-result v0

    const/4 v7, 0x0

    const/16 v8, -0x6c

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    iput v8, v10, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v7

    .line 6
    :cond_0
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    iget-object v0, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 8
    iget-object v2, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<permission-tree> name has less than three segments: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v1

    .line 10
    iput v8, v10, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v7

    .line 11
    :cond_2
    iget-object v0, v12, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v1, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 12
    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, v12, Landroid/content/pm/PackageParser$Permission;->tree:Z

    const-string v4, "<permission-tree>"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v5, v12

    move-object/from16 v6, p5

    .line 14
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    iput v8, v10, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v7

    .line 16
    :cond_3
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v12
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 1
    sget-object v1, Li/a;->AndroidManifestProvider:[I

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2
    iget-object v4, v6, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v4, :cond_0

    .line 3
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0xf

    iget-object v14, v6, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v15, 0x8

    const/16 v16, 0xe

    const/16 v17, 0x6

    move-object v7, v4

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    invoke-direct/range {v7 .. v17}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    iput-object v4, v6, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v5, "<provider>"

    .line 4
    iput-object v5, v4, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v4, v6, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v4, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    move/from16 v5, p5

    .line 6
    iput v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 7
    new-instance v7, Landroid/content/pm/PackageParser$Provider;

    new-instance v5, Landroid/content/pm/ProviderInfo;

    invoke-direct {v5}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v7, v4, v5}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    const/4 v4, 0x0

    .line 8
    aget-object v5, p6, v4

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v8

    .line 10
    :cond_1
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x11

    if-ge v5, v9, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v4

    .line 11
    :goto_0
    iget-object v9, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v10, 0x7

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v9, Landroid/content/pm/ComponentInfo;->exported:Z

    const/16 v5, 0xa

    .line 12
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 13
    iget-object v9, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v10, 0xb

    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v9, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    const/4 v9, 0x3

    .line 14
    invoke-virtual {v1, v9, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    .line 15
    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    move-object v10, v9

    :cond_3
    if-nez v10, :cond_4

    .line 16
    iget-object v10, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v11, v10, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_2

    .line 17
    :cond_4
    iget-object v11, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_5
    move-object v10, v8

    :goto_1
    iput-object v10, v11, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    :goto_2
    const/4 v10, 0x5

    .line 18
    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    goto :goto_3

    :cond_6
    move-object v9, v10

    :goto_3
    if-nez v9, :cond_7

    .line 19
    iget-object v9, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v10, v9, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_5

    .line 20
    :cond_7
    iget-object v10, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_8
    move-object v9, v8

    :goto_4
    iput-object v9, v10, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 21
    :goto_5
    iget-object v9, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v10, 0xd

    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v9, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 22
    iget-object v9, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v10, 0x9

    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v9, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 23
    iget-object v9, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v10, 0xc

    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v9, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 24
    iget-object v9, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput v4, v9, Landroid/content/pm/ProviderInfo;->flags:I

    const/16 v9, 0x10

    .line 25
    invoke-virtual {v1, v9, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 26
    iget-object v9, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v10, v9, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v11, 0x40000000    # 2.0f

    or-int/2addr v10, v11

    iput v10, v9, Landroid/content/pm/ProviderInfo;->flags:I

    .line 27
    iget-boolean v9, v9, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v9, :cond_9

    .line 28
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Provider exported request ignored due to singleUser: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PackageParser"

    invoke-static {v10, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v9, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v4, v9, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 30
    :cond_9
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x10000000

    and-int/2addr v1, v9

    if-eqz v1, :cond_a

    .line 32
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v1, v0, :cond_a

    const-string v0, "Heavy-weight applications can not have providers in main process"

    .line 33
    aput-object v0, p6, v4

    return-object v8

    :cond_a
    if-nez v5, :cond_b

    const-string v0, "<provider> does not include authorities attribute"

    .line 34
    aput-object v0, p6, v4

    return-object v8

    .line 35
    :cond_b
    iget-object v0, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v7

    move-object/from16 v5, p6

    .line 36
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return-object v8

    :cond_c
    return-object v7
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 2
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v11, :cond_17

    :cond_1
    if-eq v0, v2, :cond_0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "intent-filter"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_4

    .line 4
    new-instance v13, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-direct {v13, v10}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v13

    move-object/from16 v6, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v12

    .line 6
    :cond_3
    iget-object v0, v10, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "meta-data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v4, v10, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v10, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return v12

    .line 9
    :cond_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "grant-uri-permission"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    const-string v6, " "

    const-string v13, " at "

    const-string v14, "PackageParser"

    if-eqz v0, :cond_b

    .line 10
    sget-object v0, Li/a;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v12, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 12
    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, v2, v12}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 13
    :goto_1
    invoke-virtual {v0, v1, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 14
    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, v2, v1}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 15
    :cond_7
    invoke-virtual {v0, v5, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 16
    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, v2, v5}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 17
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_a

    .line 18
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v2, :cond_9

    new-array v2, v1, [Landroid/os/PatternMatcher;

    .line 19
    iput-object v2, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aput-object v4, v2, v12

    goto :goto_2

    .line 20
    :cond_9
    array-length v0, v2

    add-int/lit8 v3, v0, 0x1

    .line 21
    new-array v3, v3, [Landroid/os/PatternMatcher;

    .line 22
    invoke-static {v2, v12, v3, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    aput-object v4, v3, v0

    .line 24
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 25
    :goto_2
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 26
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 27
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <path-permission>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 29
    :cond_b
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v15, "path-permission"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 30
    sget-object v0, Li/a;->AndroidManifestPathPermission:[I

    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v12, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 32
    invoke-virtual {v0, v1, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_c

    move-object/from16 v16, v15

    .line 33
    :cond_c
    invoke-virtual {v0, v5, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_d

    goto :goto_3

    :cond_d
    move-object/from16 v15, v17

    :goto_3
    if-eqz v16, :cond_e

    .line 34
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v4, v16

    move/from16 v16, v1

    goto :goto_4

    :cond_e
    move-object/from16 v4, v16

    move/from16 v16, v12

    :goto_4
    if-eqz v15, :cond_f

    .line 35
    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v1

    :cond_f
    if-nez v16, :cond_10

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 38
    :cond_10
    invoke-virtual {v0, v2, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 39
    new-instance v5, Landroid/content/pm/PathPermission;

    invoke-direct {v5, v2, v12, v4, v15}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v5

    goto :goto_5

    :cond_11
    const/16 v17, 0x0

    .line 40
    :goto_5
    invoke-virtual {v0, v3, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 41
    new-instance v3, Landroid/content/pm/PathPermission;

    invoke-direct {v3, v2, v1, v4, v15}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v3

    :cond_12
    const/4 v2, 0x5

    .line 42
    invoke-virtual {v0, v2, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 43
    new-instance v3, Landroid/content/pm/PathPermission;

    const/4 v5, 0x2

    invoke-direct {v3, v2, v5, v4, v15}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v3

    .line 44
    :cond_13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v17, :cond_15

    .line 45
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v2, :cond_14

    new-array v1, v1, [Landroid/content/pm/PathPermission;

    .line 46
    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aput-object v17, v1, v12

    goto :goto_6

    .line 47
    :cond_14
    array-length v0, v2

    add-int/lit8 v1, v0, 0x1

    .line 48
    new-array v1, v1, [Landroid/content/pm/PathPermission;

    .line 49
    invoke-static {v2, v12, v1, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    aput-object v17, v1, v0

    .line 51
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 52
    :goto_6
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 53
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 55
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <provider>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static/range {p2 .. p2}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_17
    return v1
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    const-string v0, "PackageParser"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string p0, "RSA"

    .line 3
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    :try_start_2
    const-string p0, "DSA"

    .line 5
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    return-object v2

    :catch_2
    const-string p0, "Could not parse public key because DSA isn\'t included in build"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_3
    const-string p0, "Could not parse public key because RSA isn\'t included in build"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_4
    const-string p0, "Could not parse verifier public key; invalid Base64"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1
    sget-object v1, Li/a;->AndroidManifestService:[I

    move-object/from16 v6, p2

    move-object/from16 v5, p4

    invoke-virtual {v6, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2
    iget-object v2, v7, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0x8

    iget-object v15, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v16, 0x6

    const/16 v17, 0x7

    const/16 v18, 0x4

    move-object v8, v2

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    invoke-direct/range {v8 .. v18}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIII[Ljava/lang/String;III)V

    iput-object v2, v7, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v3, "<service>"

    .line 4
    iput-object v3, v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v2, v7, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    move/from16 v3, p5

    .line 6
    iput v3, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 7
    new-instance v8, Landroid/content/pm/PackageParser$Service;

    new-instance v3, Landroid/content/pm/ServiceInfo;

    invoke-direct {v3}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-direct {v8, v2, v3}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    const/4 v9, 0x0

    .line 8
    aget-object v2, p6, v9

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v10

    :cond_1
    const/4 v2, 0x5

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v4, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v4, Landroid/content/pm/ComponentInfo;->exported:Z

    :cond_2
    const/4 v11, 0x3

    .line 12
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 13
    iget-object v2, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_1

    .line 14
    :cond_3
    iget-object v4, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v10

    :goto_0
    iput-object v2, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 15
    :goto_1
    iget-object v2, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput v9, v2, Landroid/content/pm/ServiceInfo;->flags:I

    const/16 v2, 0x9

    .line 16
    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v12, 0x1

    if-eqz v2, :cond_5

    .line 17
    iget-object v2, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v4, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v4, v12

    iput v4, v2, Landroid/content/pm/ServiceInfo;->flags:I

    :cond_5
    const/16 v2, 0xa

    .line 18
    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    iget-object v2, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v4, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/content/pm/ServiceInfo;->flags:I

    :cond_6
    const/16 v2, 0xb

    .line 20
    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const-string v13, " "

    const-string v14, " at "

    const-string v15, "PackageParser"

    if-eqz v2, :cond_8

    .line 21
    iget-object v2, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 22
    iget-boolean v2, v2, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v2, :cond_7

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service exported request ignored due to singleUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v2, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-boolean v9, v2, Landroid/content/pm/ComponentInfo;->exported:Z

    :cond_7
    move/from16 v16, v12

    goto :goto_2

    :cond_8
    move/from16 v16, v3

    .line 25
    :goto_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 27
    iget-object v1, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v1, v0, :cond_9

    const-string v0, "Heavy-weight applications can not have services in main process"

    .line 28
    aput-object v0, p6, v9

    return-object v10

    .line 29
    :cond_9
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 30
    :goto_3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v12, :cond_11

    if-ne v0, v11, :cond_a

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v4, :cond_11

    :cond_a
    if-eq v0, v11, :cond_10

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    goto :goto_3

    .line 31
    :cond_b
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 32
    new-instance v3, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-direct {v3, v8}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 p1, v3

    move-object/from16 v3, p4

    move/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    .line 33
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return-object v10

    .line 34
    :cond_c
    iget-object v0, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    move/from16 v18, v4

    .line 35
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 36
    iget-object v4, v8, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v8, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_f

    return-object v10

    .line 37
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <service>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static/range {p3 .. p3}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_f
    :goto_4
    move-object/from16 v6, p2

    move-object/from16 v5, p4

    move/from16 v4, v18

    goto/16 :goto_3

    :cond_10
    move-object/from16 v6, p2

    move-object/from16 v5, p4

    goto/16 :goto_3

    :cond_11
    if-nez v16, :cond_13

    .line 39
    iget-object v0, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    move v9, v12

    :cond_12
    iput-boolean v9, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    :cond_13
    return-object v8
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Li/a;->AndroidManifestUsesPermission:[I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p4, 0x0

    .line 2
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 5
    iget v2, v2, Landroid/util/TypedValue;->data:I

    goto :goto_0

    :cond_0
    move v2, p4

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_1

    .line 7
    sget p2, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v2, p2, :cond_3

    :cond_1
    if-eqz v0, :cond_3

    .line 8
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 9
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq p1, v1, :cond_3

    const-string p1, "conflicting <uses-permission> entries"

    .line 12
    aput-object p1, p5, p4

    const/16 p1, -0x6c

    .line 13
    iput p1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    return p4

    .line 14
    :cond_3
    :goto_1
    invoke-static {p3}, Lu/n;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    return v1
.end method

.method private static parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/VerifierInfo;
    .locals 1

    .line 1
    sget-object p1, Li/a;->AndroidManifestPackageVerifier:[I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    const-string p3, "PackageParser"

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "verifier "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " public key was null; skipping"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    invoke-static {p2}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 8
    new-instance p0, Landroid/content/pm/VerifierInfo;

    invoke-direct {p0, p1, p2}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    const-string/jumbo p1, "verifier package name was null; skipping"

    .line 9
    invoke-static {p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Landroid/content/pm/Signature;

    invoke-direct {p0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    return-object p0
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 3
    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 6
    :goto_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->blocked:Z

    if-eqz v0, :cond_2

    .line 7
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    .line 8
    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 9
    :goto_1
    iget p2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 10
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_3

    :cond_3
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p2, v1, :cond_5

    const v1, 0x8000

    and-int/2addr p1, v1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    .line 11
    :goto_2
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_3

    :cond_5
    const/4 p1, 0x2

    if-eq p2, p1, :cond_6

    const/4 p1, 0x3

    if-ne p2, p1, :cond_7

    .line 12
    :cond_6
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 13
    :cond_7
    :goto_3
    iput p2, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    return-void
.end method

.method private static validateName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v2

    :goto_0
    if-ge v3, v0, :cond_7

    .line 2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-lt v6, v7, :cond_0

    const/16 v7, 0x7a

    if-le v6, v7, :cond_1

    :cond_0
    const/16 v7, 0x41

    if-lt v6, v7, :cond_2

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_2

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    if-nez v5, :cond_4

    const/16 v7, 0x30

    if-lt v6, v7, :cond_3

    const/16 v7, 0x39

    if-le v6, v7, :cond_5

    :cond_3
    const/16 v7, 0x5f

    if-ne v6, v7, :cond_4

    goto :goto_1

    :cond_4
    const/16 v4, 0x2e

    if-ne v6, v4, :cond_6

    move v4, v2

    move v5, v4

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bad character \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-nez v4, :cond_9

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const-string p0, "must have at least one \'.\' separator"

    goto :goto_3

    :cond_9
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method


# virtual methods
.method public collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 1
    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 2
    sget-object v3, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 3
    :try_start_0
    sget-object v4, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    .line 4
    sput-object v2, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    if-nez v5, :cond_1

    const/16 v4, 0x2000

    new-array v5, v4, [B

    .line 6
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    .line 8
    :try_start_1
    new-instance v7, Ljava/util/jar/JarFile;

    iget-object v8, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    and-int/lit8 v9, p2, 0x1

    const/16 v10, -0x67

    if-eqz v9, :cond_2

    const-string v2, "AndroidManifest.xml"

    .line 9
    invoke-virtual {v7, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 10
    invoke-direct {v1, v7, v2, v5}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v5

    if-nez v5, :cond_e

    const-string v4, "PackageParser"

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has no certificates at entry "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; ignoring!"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    .line 13
    iput v10, v1, Landroid/content/pm/PackageParser;->mParseError:I

    return v6

    .line 14
    :cond_2
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v9

    .line 15
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 16
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/jar/JarEntry;

    .line 17
    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "META-INF/"

    .line 19
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_1

    :cond_5
    const-string v13, "AndroidManifest.xml"

    .line 20
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 21
    invoke-virtual {v7, v11}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Landroid/content/pm/ManifestDigest;->fromInputStream(Ljava/io/InputStream;)Landroid/content/pm/ManifestDigest;

    move-result-object v12

    iput-object v12, v0, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;

    .line 22
    :cond_6
    invoke-direct {v1, v7, v11, v5}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v12

    if-nez v12, :cond_7

    const-string v2, "PackageParser"

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has no certificates at entry "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; ignoring!"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    .line 25
    iput v10, v1, Landroid/content/pm/PackageParser;->mParseError:I

    return v6

    :cond_7
    if-nez v2, :cond_8

    move-object v2, v12

    goto :goto_1

    :cond_8
    move v13, v6

    .line 26
    :goto_2
    array-length v14, v2

    if-ge v13, v14, :cond_3

    move v14, v6

    .line 27
    :goto_3
    array-length v15, v12

    if-ge v14, v15, :cond_a

    .line 28
    aget-object v15, v2, v13

    if-eqz v15, :cond_9

    aget-object v15, v2, v13

    aget-object v3, v12, v14

    invoke-virtual {v15, v3}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v8

    goto :goto_4

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_a
    move v3, v6

    :goto_4
    if-eqz v3, :cond_c

    .line 29
    array-length v3, v2

    array-length v14, v12

    if-eq v3, v14, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_c
    :goto_5
    const-string v2, "PackageParser"

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has mismatched certificates at entry "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; ignoring!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    const/16 v0, -0x68

    .line 32
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    return v6

    :cond_d
    move-object v5, v2

    .line 33
    :cond_e
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    .line 34
    sget-object v2, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    :try_start_2
    sput-object v4, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 36
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_11

    .line 37
    :try_start_3
    array-length v2, v5

    if-lez v2, :cond_11

    .line 38
    array-length v2, v5

    .line 39
    array-length v3, v5

    new-array v3, v3, [Landroid/content/pm/Signature;

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move v3, v6

    :goto_6
    if-ge v3, v2, :cond_f

    .line 40
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    new-instance v7, Landroid/content/pm/Signature;

    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 41
    :cond_f
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Ljava/util/Set;

    move v2, v6

    .line 42
    :goto_7
    array-length v3, v5

    if-ge v2, v3, :cond_10

    .line 43
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Ljava/util/Set;

    aget-object v4, v5, v2

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_10
    return v8

    :cond_11
    const-string v2, "PackageParser"

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has no certificates; ignoring!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput v10, v1, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    return v6

    :catchall_0
    move-exception v0

    .line 46
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "PackageParser"

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, -0x66

    .line 48
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    return v6

    :catch_1
    move-exception v0

    const-string v2, "PackageParser"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x69

    .line 50
    iput v2, v1, Landroid/content/pm/PackageParser;->mParseError:I

    return v6

    :catch_2
    move-exception v0

    const-string v2, "PackageParser"

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x69

    .line 52
    iput v2, v1, Landroid/content/pm/PackageParser;->mParseError:I

    return v6

    :catchall_1
    move-exception v0

    .line 53
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public collectManifestDigest(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    iget-object v1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "AndroidManifest.xml"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ManifestDigest;->fromInputStream(Ljava/io/InputStream;)Landroid/content/pm/ManifestDigest;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getParseError()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    return v0
.end method

.method public parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;
    .locals 28

    move-object/from16 v1, p0

    move/from16 v2, p4

    const/4 v3, 0x1

    .line 1
    iput v3, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/16 v4, -0x64

    const-string v5, "PackageParser"

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping dir: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput v4, v1, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v6

    .line 6
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isPackageFilename(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_2

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping non-package file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    iput v4, v1, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v6

    .line 9
    :cond_2
    :try_start_0
    new-instance v15, Landroid/content/res/AssetManager;

    invoke-direct {v15}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 10
    :try_start_1
    iget-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v15, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    new-instance v14, Landroid/content/res/Resources;

    move-object/from16 v7, p3

    invoke-direct {v14, v15, v7, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

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

    .line 12
    :try_start_2
    sget v26, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v15

    move-object/from16 v27, v14

    move/from16 v14, v16

    move-object v4, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move/from16 v24, v26

    :try_start_3
    invoke-virtual/range {v7 .. v24}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    const-string v7, "AndroidManifest.xml"

    .line 13
    invoke-virtual {v4, v0, v7}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v14, v27

    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v15, v4

    move-object/from16 v14, v27

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v27, v14

    move-object v4, v15

    goto :goto_2

    :cond_3
    move-object v4, v15

    .line 14
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed adding asset path:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v7, v3

    move-object v0, v6

    move-object v14, v0

    :goto_0
    move-object v15, v4

    move-object v4, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v15, v4

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v4, v15

    :goto_1
    move-object v14, v6

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v14, v6

    move-object v15, v14

    .line 15
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v3

    move-object v4, v6

    :goto_3
    if-eqz v7, :cond_5

    if-eqz v15, :cond_4

    .line 16
    invoke-virtual {v15}, Landroid/content/res/AssetManager;->close()V

    :cond_4
    const/16 v0, -0x65

    .line 17
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v6

    :cond_5
    new-array v7, v3, [Ljava/lang/String;

    .line 18
    :try_start_5
    invoke-direct {v1, v14, v4, v2, v7}, Landroid/content/pm/PackageParser;->parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object v2, v6

    goto :goto_4

    :catch_5
    move-exception v0

    const/16 v2, -0x66

    .line 19
    iput v2, v1, Landroid/content/pm/PackageParser;->mParseError:I

    move-object v2, v0

    move-object v0, v6

    :goto_4
    if-nez v0, :cond_9

    .line 20
    iget-boolean v0, v1, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v0, :cond_6

    iget v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    if-eq v0, v3, :cond_8

    :cond_6
    if-eqz v2, :cond_7

    .line 21
    iget-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-static {v5, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 22
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_5
    iget v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    if-ne v0, v3, :cond_8

    const/16 v0, -0x6c

    .line 24
    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 25
    :cond_8
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 26
    invoke-virtual {v15}, Landroid/content/res/AssetManager;->close()V

    return-object v6

    .line 27
    :cond_9
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 28
    invoke-virtual {v15}, Landroid/content/res/AssetManager;->close()V

    move-object/from16 v2, p2

    .line 29
    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 30
    iget-object v2, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 31
    iput-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    return-void
.end method
