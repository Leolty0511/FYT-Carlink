.class public Landroid/telephony/cdma/CdmaSmsCbProgramResults;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramResults;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_CATEGORY_ALREADY_ADDED:I = 0x3

.field public static final RESULT_CATEGORY_ALREADY_DELETED:I = 0x4

.field public static final RESULT_CATEGORY_LIMIT_EXCEEDED:I = 0x2

.field public static final RESULT_INVALID_ALERT_OPTION:I = 0x6

.field public static final RESULT_INVALID_CATEGORY_NAME:I = 0x7

.field public static final RESULT_INVALID_MAX_MESSAGES:I = 0x5

.field public static final RESULT_MEMORY_LIMIT_EXCEEDED:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_UNSPECIFIED_FAILURE:I = 0x8


# instance fields
.field private final mCategory:I

.field private final mCategoryResult:I

.field private final mLanguage:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/cdma/CdmaSmsCbProgramResults$1;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaSmsCbProgramResults$1;-><init>()V

    sput-object v0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    .line 3
    iput p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    .line 4
    iput p3, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    return v0
.end method

.method public getCategoryResult()I
    .locals 1

    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CdmaSmsCbProgramResults{category="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", language="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", result="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    .line 29
    .line 30
    const/16 v2, 0x7d

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Landroid/app/m;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
