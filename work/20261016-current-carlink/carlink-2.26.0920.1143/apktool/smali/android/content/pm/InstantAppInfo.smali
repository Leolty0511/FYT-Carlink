.class public final Landroid/content/pm/InstantAppInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mGrantedPermissions:[Ljava/lang/String;

.field private final mLabelText:Ljava/lang/CharSequence;

.field private final mPackageName:Ljava/lang/String;

.field private final mRequestedPermissions:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/InstantAppInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Landroid/content/pm/InstantAppInfo;->mLabelText:Ljava/lang/CharSequence;

    .line 6
    iput-object p2, p0, Landroid/content/pm/InstantAppInfo;->mRequestedPermissions:[Ljava/lang/String;

    .line 7
    iput-object p3, p0, Landroid/content/pm/InstantAppInfo;->mGrantedPermissions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mLabelText:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mRequestedPermissions:[Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mGrantedPermissions:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/InstantAppInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/pm/InstantAppInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    iput-object p1, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Landroid/content/pm/InstantAppInfo;->mLabelText:Ljava/lang/CharSequence;

    .line 12
    iput-object p3, p0, Landroid/content/pm/InstantAppInfo;->mRequestedPermissions:[Ljava/lang/String;

    .line 13
    iput-object p4, p0, Landroid/content/pm/InstantAppInfo;->mGrantedPermissions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getGrantedPermissions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mGrantedPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method public getRequestedPermissions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mRequestedPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstantAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object p1, p0, Landroid/content/pm/InstantAppInfo;->mLabelText:Ljava/lang/CharSequence;

    .line 11
    .line 12
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mLabelText:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mRequestedPermissions:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mGrantedPermissions:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/content/pm/InstantAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
