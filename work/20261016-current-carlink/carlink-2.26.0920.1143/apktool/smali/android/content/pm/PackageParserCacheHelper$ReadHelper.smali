.class public Landroid/content/pm/PackageParserCacheHelper$ReadHelper;
.super Landroid/os/Parcel$ReadWriteHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParserCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadHelper"
.end annotation


# instance fields
.field private final mParcel:Landroid/os/Parcel;

.field private final mStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public readString(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public startAndInstall()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    .line 24
    .line 25
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mStrings:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->mParcel:Landroid/os/Parcel;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
