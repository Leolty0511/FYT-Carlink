.class public final Landroid/app/job/JobInfo$TriggerContentUri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TriggerContentUri"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$TriggerContentUri$Flags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_NOTIFY_FOR_DESCENDANTS:I = 0x1


# instance fields
.field private final mFlags:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/job/JobInfo$TriggerContentUri$1;

    invoke-direct {v0}, Landroid/app/job/JobInfo$TriggerContentUri$1;-><init>()V

    sput-object v0, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    .line 4
    iput p2, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 8
    .line 9
    iget-object v0, p1, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v2, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget p1, p1, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    .line 20
    .line 21
    iget v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_0
    iget v1, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
