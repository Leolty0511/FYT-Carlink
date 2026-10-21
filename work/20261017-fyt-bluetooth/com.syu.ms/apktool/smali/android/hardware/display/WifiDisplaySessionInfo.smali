.class public final Landroid/hardware/display/WifiDisplaySessionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/WifiDisplaySessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClient:Z

.field private final mGroupId:Ljava/lang/String;

.field private final mIP:Ljava/lang/String;

.field private final mPassphrase:Ljava/lang/String;

.field private final mSessionId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplaySessionInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/display/WifiDisplaySessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    .line 4
    iput p2, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    .line 5
    iput-object p3, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    return v0
.end method

.method public isClient()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiDisplaySessionInfo:\n    Client/Owner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    if-eqz v1, :cond_0

    const-string v1, "Client"

    goto :goto_0

    :cond_0
    const-string v1, "Owner"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    GroupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    Passphrase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    SessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    IP Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mClient:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mSessionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Landroid/hardware/display/WifiDisplaySessionInfo;->mIP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
