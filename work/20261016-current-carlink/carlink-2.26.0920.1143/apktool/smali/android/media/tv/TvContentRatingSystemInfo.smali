.class public final Landroid/media/tv/TvContentRatingSystemInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mXmlUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TvContentRatingSystemInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvContentRatingSystemInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvContentRatingSystemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    .line 4
    iput-object p2, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/TvContentRatingSystemInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/tv/TvContentRatingSystemInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static final createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.resource"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v0, Landroid/media/tv/TvContentRatingSystemInfo;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvContentRatingSystemInfo;-><init>(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getXmlUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final isSystemDefined()Z
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
