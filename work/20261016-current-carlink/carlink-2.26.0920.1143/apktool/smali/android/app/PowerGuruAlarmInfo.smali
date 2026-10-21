.class public final Landroid/app/PowerGuruAlarmInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionName:Ljava/lang/String;

.field public alarmType:I

.field public componentName:Ljava/lang/String;

.field public isAvailable:Z

.field public isFromGMS:Z

.field public packageName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/PowerGuruAlarmInfo$1;

    invoke-direct {v0}, Landroid/app/PowerGuruAlarmInfo$1;-><init>()V

    sput-object v0, Landroid/app/PowerGuruAlarmInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/PowerGuruAlarmInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    .line 5
    iput p4, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    .line 6
    iput-boolean p5, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    .line 7
    iput-boolean p6, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmType()I
    .locals 1

    iget v0, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    return v0
.end method

.method public getAvailable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    return v0
.end method

.method public getCpnt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getFromGMS()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    return v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v0, v2, :cond_0

    .line 32
    .line 33
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v1

    .line 36
    :goto_0
    iput-boolean v0, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne p1, v2, :cond_1

    .line 43
    .line 44
    move v1, v2

    .line 45
    :cond_1
    iput-boolean v1, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    .line 46
    .line 47
    return-void
.end method

.method public setAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    return-object p1
.end method

.method public setAlarmType(I)I
    .locals 0

    iput p1, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    return p1
.end method

.method public setAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    return-void
.end method

.method public setCpnt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    return-object p1
.end method

.method public setFromGMS(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    return-void
.end method

.method public setPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "p: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " t: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ava: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-boolean p2, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method
