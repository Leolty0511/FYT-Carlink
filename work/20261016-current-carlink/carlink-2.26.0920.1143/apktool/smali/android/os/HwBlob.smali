.class public Landroid/os/HwBlob;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwBlob"

.field private static final sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mNativeContext:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/HwBlob;->native_init()J

    .line 2
    .line 3
    .line 4
    move-result-wide v2

    .line 5
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    .line 6
    .line 7
    const-class v0, Landroid/os/HwBlob;

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
    sput-object v6, Landroid/os/HwBlob;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/os/HwBlob;->native_setup(I)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Landroid/os/HwBlob;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/os/HwBlob;->mNativeContext:J

    .line 10
    .line 11
    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final native native_init()J
.end method

.method private final native native_setup(I)V
.end method

.method public static wrapArray([Z)[Ljava/lang/Boolean;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget-boolean v3, p0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static wrapArray([B)[Ljava/lang/Byte;
    .locals 4

    .line 7
    array-length v0, p0

    .line 8
    new-array v1, v0, [Ljava/lang/Byte;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static wrapArray([D)[Ljava/lang/Double;
    .locals 5

    .line 19
    array-length v0, p0

    .line 20
    new-array v1, v0, [Ljava/lang/Double;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 21
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static wrapArray([F)[Ljava/lang/Float;
    .locals 4

    .line 16
    array-length v0, p0

    .line 17
    new-array v1, v0, [Ljava/lang/Float;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static wrapArray([I)[Ljava/lang/Integer;
    .locals 4

    .line 13
    array-length v0, p0

    .line 14
    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 15
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static wrapArray([J)[Ljava/lang/Long;
    .locals 5

    .line 4
    array-length v0, p0

    .line 5
    new-array v1, v0, [Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static wrapArray([S)[Ljava/lang/Short;
    .locals 4

    .line 10
    array-length v0, p0

    .line 11
    new-array v1, v0, [Ljava/lang/Short;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    aget-short v3, p0, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final native getBool(J)Z
.end method

.method public final native getDouble(J)D
.end method

.method public final native getFloat(J)F
.end method

.method public final native getInt16(J)S
.end method

.method public final native getInt32(J)I
.end method

.method public final native getInt64(J)J
.end method

.method public final native getInt8(J)B
.end method

.method public final native getString(J)Ljava/lang/String;
.end method

.method public final native handle()J
.end method

.method public final native putBlob(JLandroid/os/HwBlob;)V
.end method

.method public final native putBool(JZ)V
.end method

.method public final native putDouble(JD)V
.end method

.method public final native putFloat(JF)V
.end method

.method public final native putInt16(JS)V
.end method

.method public final native putInt32(JI)V
.end method

.method public final native putInt64(JJ)V
.end method

.method public final native putInt8(JB)V
.end method

.method public final native putString(JLjava/lang/String;)V
.end method
