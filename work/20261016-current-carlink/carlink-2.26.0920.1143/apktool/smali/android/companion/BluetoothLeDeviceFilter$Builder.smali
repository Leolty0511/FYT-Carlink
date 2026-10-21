.class public final Landroid/companion/BluetoothLeDeviceFilter$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/BluetoothLeDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/BluetoothLeDeviceFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private mNamePattern:Ljava/util/regex/Pattern;

.field private mRawDataFilter:[B

.field private mRawDataFilterMask:[B

.field private mRenameBytesFrom:I

.field private mRenameBytesLength:I

.field private mRenameBytesReverseOrder:Z

.field private mRenameNameFrom:I

.field private mRenameNameLength:I

.field private mRenamePrefix:Ljava/lang/String;

.field private mRenameSuffix:Ljava/lang/String;

.field private mScanFilter:Landroid/bluetooth/le/ScanFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    .line 6
    .line 7
    iput v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    .line 11
    .line 12
    return-void
.end method

.method private checkRangeNotEmpty(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    const-string v0, "Range must be non-empty"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private checkRenameNotSet()V
    .locals 2

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Renaming rule can only be set once"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method private setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/provider/OneTimeUseBuilder;->checkNotUsed()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {}, Landroid/companion/BluetoothLeDeviceFilter;->getRenamePrefixLengthLimit()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    const-string v1, "Prefix is too long"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameSuffix:Ljava/lang/String;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public build()Landroid/companion/BluetoothLeDeviceFilter;
    .locals 14

    .line 2
    invoke-virtual {p0}, Landroid/provider/OneTimeUseBuilder;->markUsed()V

    .line 3
    new-instance v13, Landroid/companion/BluetoothLeDeviceFilter;

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilter:[B

    iget-object v4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilterMask:[B

    iget-object v5, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    iget-object v6, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameSuffix:Ljava/lang/String;

    iget v7, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    iget v8, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesLength:I

    iget v9, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    iget v10, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameLength:I

    iget-boolean v11, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/companion/BluetoothLeDeviceFilter;-><init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZLandroid/companion/BluetoothLeDeviceFilter$1;)V

    return-object v13
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->build()Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object v0

    return-object v0
.end method

.method public setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/provider/OneTimeUseBuilder;->checkNotUsed()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    return-object p0
.end method

.method public setRawDataFilter([B[B)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/provider/OneTimeUseBuilder;->checkNotUsed()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    array-length v1, p2

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    const-string v1, "Mask and filter should be the same length"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilter:[B

    .line 23
    .line 24
    iput-object p2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilterMask:[B

    .line 25
    .line 26
    return-object p0
.end method

.method public setRenameFromBytes(Ljava/lang/String;Ljava/lang/String;IILjava/nio/ByteOrder;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRenameNotSet()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p4}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRangeNotEmpty(I)V

    .line 5
    .line 6
    .line 7
    iput p3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    .line 8
    .line 9
    iput p4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesLength:I

    .line 10
    .line 11
    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    if-ne p5, p3, :cond_0

    .line 14
    .line 15
    const/4 p3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p3, 0x0

    .line 18
    :goto_0
    iput-boolean p3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public setRenameFromName(Ljava/lang/String;Ljava/lang/String;II)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRenameNotSet()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p4}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRangeNotEmpty(I)V

    .line 5
    .line 6
    .line 7
    iput p3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    .line 8
    .line 9
    iput p4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameLength:I

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    iput-boolean p3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public setScanFilter(Landroid/bluetooth/le/ScanFilter;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/provider/OneTimeUseBuilder;->checkNotUsed()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 5
    .line 6
    return-object p0
.end method
