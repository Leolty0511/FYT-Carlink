.class public final Landroid/media/MediaRouterClientState$RouteInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouterClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaRouterClientState$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public deviceType:I

.field public enabled:Z

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public playbackStream:I

.field public playbackType:I

.field public presentationDisplayId:I

.field public statusCode:I

.field public supportedTypes:I

.field public volume:I

.field public volumeHandling:I

.field public volumeMax:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/MediaRouterClientState$RouteInfo$1;

    invoke-direct {v0}, Landroid/media/MediaRouterClientState$RouteInfo$1;-><init>()V

    sput-object v0, Landroid/media/MediaRouterClientState$RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaRouterClientState$RouteInfo;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 14
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 15
    iget-boolean v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 16
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 17
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 18
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 19
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 20
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 21
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 22
    iget v0, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 23
    iget p1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    iput p1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 5
    iput p1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 7
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 8
    iput p1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 9
    iput v0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RouteInfo{ id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", name="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", description="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", supportedTypes=0x"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 39
    .line 40
    const-string v2, ", enabled="

    .line 41
    .line 42
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->x(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", statusCode="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", playbackType="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", playbackStream="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", volume="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", volumeMax="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", volumeHandling="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ", presentationDisplayId="

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", deviceType="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget v1, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    .line 126
    .line 127
    const-string v2, " }"

    .line 128
    .line 129
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget p2, p0, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
