.class public final Landroid/telephony/VoLteServiceState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VoLteServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final HANDOVER_CANCELED:I = 0x3

.field public static final HANDOVER_COMPLETED:I = 0x1

.field public static final HANDOVER_FAILED:I = 0x2

.field public static final HANDOVER_STARTED:I = 0x0

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "VoLteServiceState"

.field public static final NOT_SUPPORTED:I = 0x0

.field public static final SUPPORTED:I = 0x1


# instance fields
.field private mSrvccState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/VoLteServiceState$1;

    invoke-direct {v0}, Landroid/telephony/VoLteServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    .line 5
    iput p1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return-void
.end method

.method public constructor <init>(Landroid/telephony/VoLteServiceState;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Landroid/telephony/VoLteServiceState;->copyFrom(Landroid/telephony/VoLteServiceState;)V

    return-void
.end method

.method private initialize()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "VoLteServiceState"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/VoLteServiceState;
    .locals 1

    .line 1
    new-instance v0, Landroid/telephony/VoLteServiceState;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/telephony/VoLteServiceState;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/telephony/VoLteServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "mSrvccState"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/telephony/VoLteServiceState;)V
    .locals 0

    iget p1, p1, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    iput p1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    move-object v1, p1

    .line 3
    check-cast v1, Landroid/telephony/VoLteServiceState;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget p1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 9
    .line 10
    iget v1, v1, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 11
    .line 12
    if-ne p1, v1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :catch_0
    :cond_1
    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "mSrvccState"

    .line 2
    .line 3
    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getSrvccState()I
    .locals 1

    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VoLteServiceState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateInput()V
    .locals 0

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
