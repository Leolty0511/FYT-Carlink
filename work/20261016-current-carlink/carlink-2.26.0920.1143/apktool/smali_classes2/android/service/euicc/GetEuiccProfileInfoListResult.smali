.class public final Landroid/service/euicc/GetEuiccProfileInfoListResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/euicc/GetEuiccProfileInfoListResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isRemovable:Z

.field public final profiles:[Landroid/service/euicc/EuiccProfileInfo;

.field public final result:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/euicc/GetEuiccProfileInfoListResult$1;

    invoke-direct {v0}, Landroid/service/euicc/GetEuiccProfileInfoListResult$1;-><init>()V

    sput-object v0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Landroid/service/euicc/EuiccProfileInfo;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    .line 4
    iput-boolean p3, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->isRemovable:Z

    if-nez p1, :cond_0

    .line 5
    iput-object p2, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->profiles:[Landroid/service/euicc/EuiccProfileInfo;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->profiles:[Landroid/service/euicc/EuiccProfileInfo;

    :goto_0
    return-void

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Error result with non-null profiles: "

    .line 8
    invoke-static {p3, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    .line 16
    sget-object v0, Landroid/service/euicc/EuiccProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/euicc/EuiccProfileInfo;

    iput-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->profiles:[Landroid/service/euicc/EuiccProfileInfo;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->isRemovable:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/euicc/GetEuiccProfileInfoListResult$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->profiles:[Landroid/service/euicc/EuiccProfileInfo;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->isRemovable:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
