.class public abstract Landroid/os/HwBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IHwBinder;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwBinder"

.field private static final sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mNativeContext:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/HwBinder;->native_init()J

    .line 2
    .line 3
    .line 4
    move-result-wide v2

    .line 5
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    .line 6
    .line 7
    const-class v0, Landroid/os/HwBinder;

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
    sput-object v6, Landroid/os/HwBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

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
    invoke-direct {p0}, Landroid/os/HwBinder;->native_setup()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroid/os/HwBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 8
    .line 9
    iget-wide v1, p0, Landroid/os/HwBinder;->mNativeContext:J

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final native configureRpcThreadpool(JZ)V
.end method

.method public static final native getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;
.end method

.method public static final native joinRpcThreadpool()V
.end method

.method private static final native native_init()J
.end method

.method private final native native_setup()V
.end method


# virtual methods
.method public abstract onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end method

.method public final native registerService(Ljava/lang/String;)V
.end method

.method public final native transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end method
