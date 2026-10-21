.class public Landroid/content/pm/ApplicationInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ApplicationInfo$DisplayNameComparator;,
        Landroid/content/pm/ApplicationInfo$Category;,
        Landroid/content/pm/ApplicationInfo$ApplicationInfoPrivateFlags;
    }
.end annotation


# static fields
.field public static final CATEGORY_AUDIO:I = 0x1

.field public static final CATEGORY_GAME:I = 0x0

.field public static final CATEGORY_IMAGE:I = 0x3

.field public static final CATEGORY_MAPS:I = 0x6

.field public static final CATEGORY_NEWS:I = 0x5

.field public static final CATEGORY_PRODUCTIVITY:I = 0x7

.field public static final CATEGORY_SOCIAL:I = 0x4

.field public static final CATEGORY_UNDEFINED:I = -0x1

.field public static final CATEGORY_VIDEO:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ALLOW_BACKUP:I = 0x8000

.field public static final FLAG_ALLOW_CLEAR_USER_DATA:I = 0x40

.field public static final FLAG_ALLOW_TASK_REPARENTING:I = 0x20

.field public static final FLAG_DEBUGGABLE:I = 0x2

.field public static final FLAG_EXTERNAL_STORAGE:I = 0x40000

.field public static final FLAG_EXTRACT_NATIVE_LIBS:I = 0x10000000

.field public static final FLAG_FACTORY_TEST:I = 0x10

.field public static final FLAG_FULL_BACKUP_ONLY:I = 0x4000000

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x20000000

.field public static final FLAG_HAS_CODE:I = 0x4

.field public static final FLAG_INSTALLED:I = 0x800000

.field public static final FLAG_IS_DATA_ONLY:I = 0x1000000

.field public static final FLAG_IS_GAME:I = 0x2000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_KILL_AFTER_RESTORE:I = 0x10000

.field public static final FLAG_LARGE_HEAP:I = 0x100000

.field public static final FLAG_MULTIARCH:I = -0x80000000

.field public static final FLAG_PERSISTENT:I = 0x8

.field public static final FLAG_RESIZEABLE_FOR_SCREENS:I = 0x1000

.field public static final FLAG_RESTORE_ANY_VERSION:I = 0x20000

.field public static final FLAG_STOPPED:I = 0x200000

.field public static final FLAG_SUPPORTS_LARGE_SCREENS:I = 0x800

.field public static final FLAG_SUPPORTS_NORMAL_SCREENS:I = 0x400

.field public static final FLAG_SUPPORTS_RTL:I = 0x400000

.field public static final FLAG_SUPPORTS_SCREEN_DENSITIES:I = 0x2000

.field public static final FLAG_SUPPORTS_SMALL_SCREENS:I = 0x200

.field public static final FLAG_SUPPORTS_XLARGE_SCREENS:I = 0x80000

.field public static final FLAG_SUSPENDED:I = 0x40000000

.field public static final FLAG_SYSTEM:I = 0x1

.field public static final FLAG_TEST_ONLY:I = 0x100

.field public static final FLAG_UPDATED_SYSTEM_APP:I = 0x80

.field public static final FLAG_USES_CLEARTEXT_TRAFFIC:I = 0x8000000

.field public static final FLAG_VM_SAFE_MODE:I = 0x4000

.field public static final METADATA_PRELOADED_FONTS:Ljava/lang/String; = "preloaded_fonts"

.field public static final PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE:I = 0x400

.field public static final PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION:I = 0x1000

.field public static final PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE:I = 0x800

.field public static final PRIVATE_FLAG_BACKUP_IN_FOREGROUND:I = 0x2000

.field public static final PRIVATE_FLAG_CANT_SAVE_STATE:I = 0x2

.field public static final PRIVATE_FLAG_DEFAULT_TO_DEVICE_PROTECTED_STORAGE:I = 0x20

.field public static final PRIVATE_FLAG_DIRECT_BOOT_AWARE:I = 0x40

.field public static final PRIVATE_FLAG_FORWARD_LOCK:I = 0x4

.field public static final PRIVATE_FLAG_HAS_DOMAIN_URLS:I = 0x10

.field public static final PRIVATE_FLAG_HIDDEN:I = 0x1

.field public static final PRIVATE_FLAG_INSTANT:I = 0x80

.field public static final PRIVATE_FLAG_ISOLATED_SPLIT_LOADING:I = 0x8000

.field public static final PRIVATE_FLAG_PARTIALLY_DIRECT_BOOT_AWARE:I = 0x100

.field public static final PRIVATE_FLAG_PRIVILEGED:I = 0x8

.field public static final PRIVATE_FLAG_REQUIRED_FOR_SYSTEM_USER:I = 0x200

.field public static final PRIVATE_FLAG_STATIC_SHARED_LIBRARY:I = 0x4000

.field public static final PRIVATE_FLAG_VIRTUAL_PRELOAD:I = 0x10000


# instance fields
.field public backupAgentName:Ljava/lang/String;

.field public category:I

.field public classLoaderName:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public compatibleWidthLimitDp:I

.field public credentialProtectedDataDir:Ljava/lang/String;

.field public dataDir:Ljava/lang/String;

.field public descriptionRes:I

.field public deviceProtectedDataDir:Ljava/lang/String;

.field public enabled:Z

.field public enabledSetting:I

.field public flags:I

.field public fullBackupContent:I

.field public hasMultiArchLib:Ljava/lang/String;

.field public installLocation:I

.field public largestWidthLimitDp:I

.field public manageSpaceActivityName:Ljava/lang/String;

.field public maxAspectRatio:F

.field public minSdkVersion:I

.field public nativeLibraryDir:Ljava/lang/String;

.field public nativeLibraryRootDir:Ljava/lang/String;

.field public nativeLibraryRootRequiresIsa:Z

.field public networkSecurityConfigRes:I

.field public permission:Ljava/lang/String;

.field public primaryCpuAbi:Ljava/lang/String;

.field public privateFlags:I

.field public processName:Ljava/lang/String;

.field public publicSourceDir:Ljava/lang/String;

.field public requiresSmallestWidthDp:I

.field public resourceDirs:[Ljava/lang/String;

.field public scanPublicSourceDir:Ljava/lang/String;

.field public scanSourceDir:Ljava/lang/String;

.field public seInfo:Ljava/lang/String;

.field public seInfoUser:Ljava/lang/String;

.field public secondaryCpuAbi:Ljava/lang/String;

.field public secondaryNativeLibraryDir:Ljava/lang/String;

.field public sharedLibraryFiles:[Ljava/lang/String;

.field public sourceDir:Ljava/lang/String;

.field public splitClassLoaderNames:[Ljava/lang/String;

.field public splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public splitNames:[Ljava/lang/String;

.field public splitPublicSourceDirs:[Ljava/lang/String;

.field public splitSourceDirs:[Ljava/lang/String;

.field public storageUuid:Ljava/util/UUID;

.field public targetSandboxVersion:I

.field public targetSdkVersion:I

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I

.field public uid:I

.field public versionCode:I

.field public volumeUuid:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/ApplicationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 4
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 5
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 6
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 7
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 8
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const-string v1, "default"

    .line 9
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 11
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 13
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    .line 14
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 16
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 17
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 18
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 19
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 20
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const-string v1, "default"

    .line 21
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 23
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 25
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 26
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 30
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->theme:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 31
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 32
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 33
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 34
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 35
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 36
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 38
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 43
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 44
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 45
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 46
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 49
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 50
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->hasMultiArchLib:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->hasMultiArchLib:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 54
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 57
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 60
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 61
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 62
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 63
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 64
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 65
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 66
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 67
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 68
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 69
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 70
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 71
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 72
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 73
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->category:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 74
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 75
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 76
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 77
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 79
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 80
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 81
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 82
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 83
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const-string v1, "default"

    .line 84
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 86
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, -0x1

    .line 87
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 88
    iput v2, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 101
    invoke-static {v2}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 109
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->hasMultiArchLib:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getCategoryTitle(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    const p1, 0x1040087

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const p1, 0x1040085

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_2
    const p1, 0x1040086

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_3
    const p1, 0x1040088

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_4
    const p1, 0x1040084

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_5
    const p1, 0x1040089

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_6
    const p1, 0x1040082

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :pswitch_7
    const p1, 0x1040083

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isPackageUnavailable(Landroid/content/pm/PackageManager;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :catch_0
    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disableCompatibilityMode()V
    .locals 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x83e00

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 3

    .line 2
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 3
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "className="

    .line 4
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "permission="

    .line 8
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 10
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    :cond_1
    const-string/jumbo v0, "processName="

    .line 11
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 13
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    if-eqz p3, :cond_2

    const-string/jumbo v0, "taskAffinity="

    .line 14
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 16
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    :cond_2
    const-string/jumbo v0, "uid="

    .line 17
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const-string v2, " privateFlags=0x"

    .line 19
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->x(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 20
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const-string v2, " theme=0x"

    .line 21
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->x(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    const-string/jumbo v0, "requiresSmallestWidthDp="

    .line 25
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " compatibleWidthLimitDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " largestWidthLimitDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "sourceDir="

    .line 27
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 29
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    .line 30
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "publicSourceDir="

    .line 31
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 33
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    .line 34
    :cond_4
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "splitSourceDirs="

    .line 35
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    .line 38
    :cond_5
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 39
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "splitPublicSourceDirs="

    .line 40
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    .line 43
    :cond_6
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "resourceDirs="

    .line 44
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 47
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "seinfo="

    .line 48
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "seinfoUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 51
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    :cond_8
    const-string v0, "dataDir="

    .line 52
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 54
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    if-eqz p3, :cond_9

    const-string v0, "deviceProtectedDataDir="

    .line 55
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "credentialProtectedDataDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 58
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    .line 59
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "sharedLibraryFiles="

    .line 60
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    .line 63
    :cond_9
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "classLoaderName="

    .line 64
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 66
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    .line 67
    :cond_a
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "splitClassLoaderNames="

    .line 68
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v0, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    :cond_b
    const-string v0, "enabled="

    .line 71
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " minSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetSandboxVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_13

    .line 73
    iget-object p3, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz p3, :cond_c

    const-string/jumbo p3, "manageSpaceActivityName="

    .line 74
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 75
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 76
    invoke-static {p3, v0, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    .line 77
    :cond_c
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz p3, :cond_d

    const-string p3, "description=0x"

    .line 78
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 79
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 80
    :cond_d
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    if-eqz p3, :cond_e

    const-string/jumbo p3, "uiOptions=0x"

    .line 81
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 82
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_e
    const-string/jumbo p3, "supportsRtl="

    .line 83
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 84
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    const-string/jumbo v1, "true"

    const-string v2, "false"

    if-eqz v0, :cond_f

    move-object v0, v1

    goto :goto_0

    :cond_f
    move-object v0, v2

    .line 85
    :goto_0
    invoke-static {p3, v0, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    .line 86
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-lez p3, :cond_10

    const-string p3, "fullBackupContent=@xml/"

    .line 87
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 88
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_10
    const-string p3, "fullBackupContent="

    .line 89
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 90
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-gez v0, :cond_11

    move-object v1, v2

    .line 91
    :cond_11
    invoke-static {p3, v1, p1}, Landroid/accessibilityservice/c;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/Printer;)V

    .line 92
    :goto_1
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    if-eqz p3, :cond_12

    const-string/jumbo p3, "networkSecurityConfigRes=0x"

    .line 93
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 94
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 96
    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 97
    :cond_12
    iget p3, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_13

    const-string p3, "category="

    .line 98
    invoke-static {p2, p3}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 99
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 100
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    return-object p0
.end method

.method public getBaseCodePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseResourcePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getCodePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitCodePaths()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSplitResourcePaths()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public hasCode()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRtlSupport()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initForUser(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 12
    .line 13
    const-string v0, "android"

    .line 14
    .line 15
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 61
    .line 62
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 63
    .line 64
    and-int/lit8 v0, v0, 0x20

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 69
    .line 70
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method public isDefaultToDeviceProtectedStorage()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectBootAware()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncryptionAware()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isDirectBootAware()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPartiallyDirectBootAware()Z

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

.method public isExternalAsec()Z
    .locals 2

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForwardLocked()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstantApp()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInternal()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPartiallyDirectBootAware()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivilegedApp()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequiredForSystemUser()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStaticSharedLibrary()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystemApp()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUpdatedSystemApp()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVirtualPreload()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2
    .line 3
    const/high16 v1, 0x40000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;->isPackageUnavailable(Landroid/content/pm/PackageManager;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const v0, 0x10807f2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v1, v0, p0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public requestsIsolatedSplitLoading()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBaseCodePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-void
.end method

.method public setBaseResourcePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-void
.end method

.method public setCodePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    return-void
.end method

.method public setSplitCodePaths([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    return-void
.end method

.method public setSplitResourcePaths([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ApplicationInfo{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    const-string/jumbo v2, "}"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public usesCompatibilityMode()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x83e00

    and-int/2addr v0, v1

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 55
    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 p2, 0x0

    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-boolean p2, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->hasMultiArchLib:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    .line 199
    .line 200
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 201
    .line 202
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    .line 204
    .line 205
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 206
    .line 207
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    .line 209
    .line 210
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 211
    .line 212
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    .line 214
    .line 215
    iget-boolean p2, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 216
    .line 217
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    .line 219
    .line 220
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    .line 224
    .line 225
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 226
    .line 227
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    .line 229
    .line 230
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 241
    .line 242
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    .line 244
    .line 245
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 246
    .line 247
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    .line 249
    .line 250
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 251
    .line 252
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    .line 254
    .line 255
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 256
    .line 257
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    .line 259
    .line 260
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 261
    .line 262
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    .line 264
    .line 265
    iget p2, p0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 266
    .line 267
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    .line 269
    .line 270
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    return-void
.end method
