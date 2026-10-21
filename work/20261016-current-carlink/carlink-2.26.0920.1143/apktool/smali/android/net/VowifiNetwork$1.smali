.class final Landroid/net/VowifiNetwork$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VowifiNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/VowifiNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/VowifiNetwork;
    .locals 4

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5
    new-instance v3, Landroid/net/VowifiNetwork;

    invoke-direct {v3, v0, v1, v2}, Landroid/net/VowifiNetwork;-><init>(III)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/VowifiNetwork$State;->valueOf(Ljava/lang/String;)Landroid/net/VowifiNetwork$State;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/VowifiNetwork;->access$002(Landroid/net/VowifiNetwork;Landroid/net/VowifiNetwork$State;)Landroid/net/VowifiNetwork$State;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/VowifiNetwork;->access$102(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/VowifiNetwork;->access$202(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/VowifiNetwork;->access$302(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/VowifiNetwork;->access$402(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/VowifiNetwork;->access$502(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/VowifiNetwork;->access$602(Landroid/net/VowifiNetwork;Ljava/lang/String;)Ljava/lang/String;

    .line 13
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
    invoke-static {v3, v0}, Landroid/net/VowifiNetwork;->access$702(Landroid/net/VowifiNetwork;Z)Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v3, v1}, Landroid/net/VowifiNetwork;->access$802(Landroid/net/VowifiNetwork;Z)Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {v3, p1}, Landroid/net/VowifiNetwork;->access$902(Landroid/net/VowifiNetwork;I)I

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/VowifiNetwork$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/VowifiNetwork;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/VowifiNetwork;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/net/VowifiNetwork;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/VowifiNetwork$1;->newArray(I)[Landroid/net/VowifiNetwork;

    move-result-object p1

    return-object p1
.end method
