.class public final Landroid/content/pm/EphemeralResolveInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHA_ALGORITHM:Ljava/lang/String; = "SHA-256"


# instance fields
.field private final mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

.field private final mLegacyFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$1;

    invoke-direct {v0}, Landroid/content/pm/EphemeralResolveInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/EphemeralResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/pm/EphemeralResolveInfo;-><init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo;

    .line 13
    invoke-virtual {p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->getInstantAppDigest()Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object p1

    .line 14
    invoke-static {p3}, Landroid/content/pm/EphemeralResolveInfo;->createInstantAppIntentFilterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;I)V

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v1, Landroid/content/pm/EphemeralIntentFilter;

    invoke-direct {v1, p2, p3}, Landroid/content/pm/EphemeralIntentFilter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {v0}, Landroid/content/pm/EphemeralResolveInfo;->createInstantAppIntentFilterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    .line 8
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/InstantAppResolveInfo;

    iput-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;)V"
        }
    .end annotation

    .line 16
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    invoke-direct {v0, p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/content/pm/EphemeralResolveInfo;-><init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static createInstantAppIntentFilterList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/content/pm/EphemeralIntentFilter;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/pm/EphemeralIntentFilter;->getInstantAppIntentFilter()Landroid/content/pm/InstantAppIntentFilter;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDigestBytes()[B
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getDigestPrefix()I
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getDigestPrefix()I

    move-result v0

    return v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    return-object v0
.end method

.method public getInstantAppResolveInfo()Landroid/content/pm/InstantAppResolveInfo;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    return-object v0
.end method

.method public getIntentFilters()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_0

    .line 18
    .line 19
    new-instance v4, Landroid/content/pm/EphemeralIntentFilter;

    .line 20
    .line 21
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Landroid/content/pm/InstantAppIntentFilter;

    .line 26
    .line 27
    invoke-direct {v4, v5}, Landroid/content/pm/EphemeralIntentFilter;-><init>(Landroid/content/pm/InstantAppIntentFilter;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v2
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
