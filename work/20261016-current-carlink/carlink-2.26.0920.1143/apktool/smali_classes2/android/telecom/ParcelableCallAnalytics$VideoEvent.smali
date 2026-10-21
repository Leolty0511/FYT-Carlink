.class public final Landroid/telecom/ParcelableCallAnalytics$VideoEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCallAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVE_REMOTE_SESSION_MODIFY_REQUEST:I = 0x2

.field public static final RECEIVE_REMOTE_SESSION_MODIFY_RESPONSE:I = 0x3

.field public static final SEND_LOCAL_SESSION_MODIFY_REQUEST:I = 0x0

.field public static final SEND_LOCAL_SESSION_MODIFY_RESPONSE:I = 0x1


# instance fields
.field private mEventName:I

.field private mTimeSinceLastEvent:J

.field private mVideoState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$VideoEvent$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    .line 3
    iput-wide p2, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    .line 4
    iput p4, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    return v0
.end method

.method public getTimeSinceLastEvent()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    return-wide v0
.end method

.method public getVideoState()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
