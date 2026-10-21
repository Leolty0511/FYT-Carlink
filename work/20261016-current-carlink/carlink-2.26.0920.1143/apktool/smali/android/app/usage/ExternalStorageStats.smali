.class public final Landroid/app/usage/ExternalStorageStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/ExternalStorageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appBytes:J

.field public audioBytes:J

.field public imageBytes:J

.field public obbBytes:J

.field public totalBytes:J

.field public videoBytes:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/usage/ExternalStorageStats$1;

    invoke-direct {v0}, Landroid/app/usage/ExternalStorageStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/ExternalStorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    return-wide v0
.end method

.method public getAudioBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    return-wide v0
.end method

.method public getImageBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    return-wide v0
.end method

.method public getObbBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    return-wide v0
.end method

.method public getVideoBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
