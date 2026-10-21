.class public Landroid/app/backup/RestoreDescription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/backup/RestoreDescription;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

.field private static final NO_MORE_PACKAGES_SENTINEL:Ljava/lang/String; = "NO_MORE_PACKAGES"

.field public static final TYPE_FULL_STREAM:I = 0x2

.field public static final TYPE_KEY_VALUE:I = 0x1


# instance fields
.field private final mDataType:I

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/backup/RestoreDescription;

    .line 2
    .line 3
    const-string v1, "NO_MORE_PACKAGES"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    .line 10
    .line 11
    new-instance v0, Landroid/app/backup/RestoreDescription$1;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/app/backup/RestoreDescription$1;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroid/app/backup/RestoreDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/backup/RestoreDescription$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/backup/RestoreDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    .line 4
    iput p2, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    return-void
.end method

.method public static synthetic access$100(Landroid/app/backup/RestoreDescription;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataType()I
    .locals 1

    iget v0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RestoreDescription{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "KEY_VALUE"

    goto :goto_0

    :cond_0
    const-string v1, "STREAM"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
