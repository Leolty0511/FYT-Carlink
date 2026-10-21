.class public final Landroid/content/pm/permission/RuntimePermissionPresentationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/permission/RuntimePermissionPresentationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_GRANTED:I = 0x1

.field private static final FLAG_STANDARD:I = 0x2


# instance fields
.field private final mFlags:I

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/permission/RuntimePermissionPresentationInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz p3, :cond_0

    or-int/lit8 p2, p2, 0x2

    .line 4
    :cond_0
    iput p2, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isGranted()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStandard()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
