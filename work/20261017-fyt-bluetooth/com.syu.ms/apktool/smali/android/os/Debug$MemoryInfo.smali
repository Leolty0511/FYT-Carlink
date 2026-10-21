.class public Landroid/os/Debug$MemoryInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Debug$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUM_CATEGORIES:I = 0x7

.field public static final NUM_DVK_STATS:I = 0x5

.field public static final NUM_OTHER_STATS:I = 0x10

.field public static final offsetPrivateClean:I = 0x4

.field public static final offsetPrivateDirty:I = 0x2

.field public static final offsetPss:I = 0x0

.field public static final offsetSharedClean:I = 0x5

.field public static final offsetSharedDirty:I = 0x3

.field public static final offsetSwappablePss:I = 0x1

.field public static final offsetSwappedOut:I = 0x6


# instance fields
.field public dalvikPrivateClean:I

.field public dalvikPrivateDirty:I

.field public dalvikPss:I

.field public dalvikSharedClean:I

.field public dalvikSharedDirty:I

.field public dalvikSwappablePss:I

.field public dalvikSwappedOut:I

.field public nativePrivateClean:I

.field public nativePrivateDirty:I

.field public nativePss:I

.field public nativeSharedClean:I

.field public nativeSharedDirty:I

.field public nativeSwappablePss:I

.field public nativeSwappedOut:I

.field public otherPrivateClean:I

.field public otherPrivateDirty:I

.field public otherPss:I

.field public otherSharedClean:I

.field public otherSharedDirty:I

.field private otherStats:[I

.field public otherSwappablePss:I

.field public otherSwappedOut:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Debug$MemoryInfo$1;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo$1;-><init>()V

    sput-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x93

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x93

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/Debug$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Debug$MemoryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getOtherLabel(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "????"

    return-object p0

    :pswitch_0
    const-string p0, ".JITCache"

    return-object p0

    :pswitch_1
    const-string p0, ".GC"

    return-object p0

    :pswitch_2
    const-string p0, ".LinearAlloc"

    return-object p0

    :pswitch_3
    const-string p0, ".LOS"

    return-object p0

    :pswitch_4
    const-string p0, ".Heap"

    return-object p0

    :pswitch_5
    const-string p0, "Memtrack"

    return-object p0

    :pswitch_6
    const-string p0, "GL"

    return-object p0

    :pswitch_7
    const-string p0, "Graphics"

    return-object p0

    :pswitch_8
    const-string p0, "Other mmap"

    return-object p0

    :pswitch_9
    const-string p0, "image mmap"

    return-object p0

    :pswitch_a
    const-string p0, "code mmap"

    return-object p0

    :pswitch_b
    const-string p0, ".dex mmap"

    return-object p0

    :pswitch_c
    const-string p0, ".ttf mmap"

    return-object p0

    :pswitch_d
    const-string p0, ".apk mmap"

    return-object p0

    :pswitch_e
    const-string p0, ".jar mmap"

    return-object p0

    :pswitch_f
    const-string p0, ".so mmap"

    return-object p0

    :pswitch_10
    const-string p0, "Other dev"

    return-object p0

    :pswitch_11
    const-string p0, "Ashmem"

    return-object p0

    :pswitch_12
    const-string p0, "Cursor"

    return-object p0

    :pswitch_13
    const-string p0, "Stack"

    return-object p0

    :pswitch_14
    const-string p0, "Dalvik Other"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOtherPrivateClean(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    return p1
.end method

.method public getOtherPrivateDirty(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public getOtherPss(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x0

    aget p1, v0, p1

    return p1
.end method

.method public getOtherSharedClean(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x5

    aget p1, v0, p1

    return p1
.end method

.method public getOtherSharedDirty(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    return p1
.end method

.method public getOtherSwappablePss(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public getOtherSwappedOut(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x6

    aget p1, v0, p1

    return p1
.end method

.method public getTotalPrivateClean()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPrivateDirty()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPss()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSharedClean()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSharedDirty()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSwappablePss()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSwappedOut()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalUss()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget p2, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p2, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
