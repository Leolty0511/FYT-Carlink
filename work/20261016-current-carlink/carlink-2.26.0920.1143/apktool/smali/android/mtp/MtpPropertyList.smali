.class Landroid/mtp/MtpPropertyList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCount:I

.field public final mDataTypes:[I

.field public mLongValues:[J

.field private final mMaxCount:I

.field public final mObjectHandles:[I

.field public final mPropertyCodes:[I

.field public mResult:I

.field public mStringValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    .line 5
    .line 6
    iput p2, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    .line 7
    .line 8
    new-array p2, p1, [I

    .line 9
    .line 10
    iput-object p2, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    .line 11
    .line 12
    new-array p2, p1, [I

    .line 13
    .line 14
    iput-object p2, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    .line 15
    .line 16
    new-array p1, p1, [I

    .line 17
    .line 18
    iput-object p1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public append(IIIJ)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 2
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-nez v1, :cond_0

    .line 3
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 5
    iget-object p1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, p1, v0

    .line 6
    iget-object p1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aput p3, p1, v0

    .line 7
    iget-object p1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    aput-wide p4, p1, v0

    return-void
.end method

.method public append(IILjava/lang/String;)V
    .locals 2

    .line 8
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 9
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 10
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    .line 11
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 12
    iget-object p1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, p1, v0

    .line 13
    iget-object p1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    const p2, 0xffff

    aput p2, p1, v0

    .line 14
    iget-object p1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aput-object p3, p1, v0

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    return-void
.end method
