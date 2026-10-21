.class public Landroid/util/MergedConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/MergedConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGlobalConfig:Landroid/content/res/Configuration;

.field private mMergedConfig:Landroid/content/res/Configuration;

.field private mOverrideConfig:Landroid/content/res/Configuration;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/MergedConfiguration$1;

    invoke-direct {v0}, Landroid/util/MergedConfiguration$1;-><init>()V

    sput-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 4
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 5
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 13
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 14
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 8
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 9
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 25
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 26
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 27
    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/util/MergedConfiguration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/util/MergedConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/MergedConfiguration;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 18
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 19
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 20
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 22
    invoke-virtual {p0, v0, p1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private updateMergedConfig()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "mGlobalConfig="

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, "mOverrideConfig="

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/util/MergedConfiguration;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    if-ne p1, p0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_1
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 12
    .line 13
    check-cast p1, Landroid/util/MergedConfiguration;

    .line 14
    .line 15
    iget-object p1, p1, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getGlobalConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getMergedConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    const-class v0, Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/content/res/Configuration;

    .line 12
    .line 13
    iput-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/content/res/Configuration;

    .line 24
    .line 25
    iput-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/content/res/Configuration;

    .line 36
    .line 37
    iput-object p1, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 38
    .line 39
    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setGlobalConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setTo(Landroid/util/MergedConfiguration;)V
    .locals 1

    iget-object v0, p1, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, p1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mGlobalConfig="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unset()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
