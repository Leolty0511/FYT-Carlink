.class public Landroid/security/keymaster/OperationResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/OperationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final inputConsumed:I

.field public final operationHandle:J

.field public final outParams:Landroid/security/keymaster/KeymasterArguments;

.field public final output:[B

.field public final resultCode:I

.field public final token:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/keymaster/OperationResult$1;

    invoke-direct {v0}, Landroid/security/keymaster/OperationResult$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 3
    iput-object p2, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 4
    iput-wide p3, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    .line 5
    iput p5, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    .line 6
    iput-object p6, p0, Landroid/security/keymaster/OperationResult;->output:[B

    .line 7
    iput-object p7, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/OperationResult;->output:[B

    .line 14
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/keymaster/KeymasterArguments;

    iput-object p1, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->output:[B

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
