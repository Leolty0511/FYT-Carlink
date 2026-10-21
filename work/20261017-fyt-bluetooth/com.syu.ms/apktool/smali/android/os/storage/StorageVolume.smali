.class public Landroid/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "storage_volume"


# instance fields
.field private final mAllowMassStorage:Z

.field private final mDescriptionId:I

.field private final mEmulated:Z

.field private final mMaxFileSize:J

.field private final mMtpReserveSpace:I

.field private final mOwner:Landroid/os/UserHandle;

.field private final mPath:Ljava/io/File;

.field private final mPrimary:Z

.field private final mRemovable:Z

.field private mState:Ljava/lang/String;

.field private mStorageId:I

.field private mUserLabel:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/storage/StorageVolume$1;

    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/storage/StorageVolume$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/storage/StorageVolume;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 4
    iput p2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 5
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 6
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 7
    iput-boolean p5, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 8
    iput p6, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 9
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 10
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 11
    iput-object p10, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    return-void
.end method

.method public static fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;
    .locals 12

    .line 1
    new-instance v11, Landroid/os/storage/StorageVolume;

    iget v2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    iget-boolean v3, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    iget-boolean v4, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    iget-boolean v5, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    iget v6, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    iget-boolean v7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    iget-wide v8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    move-object v0, v11

    move-object v1, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    return-object v11
.end method


# virtual methods
.method public allowMassStorage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lu/h;)V
    .locals 2

    const-string v0, "StorageVolume:"

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lu/h;->b()V

    .line 3
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mStorageId"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    const-string v1, "mPath"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mDescriptionId"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mPrimary"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mRemovable"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mEmulated"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mMtpReserveSpace"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mAllowMassStorage"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "mMaxFileSize"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    const-string v1, "mOwner"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    const-string v1, "mUuid"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    const-string v1, "mUserLabel"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    const-string v1, "mState"

    invoke-virtual {p1, v1, v0}, Lu/h;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1}, Lu/h;->a()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/os/storage/StorageVolume;

    .line 3
    iget-object p1, p1, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptionId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    return v0
.end method

.method public getFatVolumeId()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMtpReserveSpace()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    return v0
.end method

.method public getOwner()Landroid/os/UserHandle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public getUserLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    return v0
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    return-void
.end method

.method public setStorageId(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x1

    .line 1
    iput p1, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return-void
.end method

.method public setUserLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 2
    new-instance v1, Lu/h;

    const-string v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lu/h;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageVolume;->dump(Lu/h;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 10
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 11
    iget-object p2, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
