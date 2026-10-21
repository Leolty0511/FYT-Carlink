.class public Landroid/os/HwRemoteBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IHwBinder;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwRemoteBinder"

.field private static final sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mNativeContext:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/HwRemoteBinder;->native_init()J

    .line 2
    .line 3
    .line 4
    move-result-wide v2

    .line 5
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    .line 6
    .line 7
    const-class v0, Landroid/os/HwRemoteBinder;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-wide/16 v4, 0x80

    .line 14
    .line 15
    move-object v0, v6

    .line 16
    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    .line 17
    .line 18
    .line 19
    sput-object v6, Landroid/os/HwRemoteBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/os/HwRemoteBinder;->native_setup_empty()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroid/os/HwRemoteBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 8
    .line 9
    iget-wide v1, p0, Landroid/os/HwRemoteBinder;->mNativeContext:J

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final native native_init()J
.end method

.method private final native native_setup_empty()V
.end method

.method private static final sendDeathNotice(Landroid/os/IHwBinder$DeathRecipient;J)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/os/IHwBinder$DeathRecipient;->serviceDied(J)V

    return-void
.end method


# virtual methods
.method public native linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final native transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end method

.method public native unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method
