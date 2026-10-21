.class public Landroid/content/pm/PackageParserCacheHelper$WriteHelper;
.super Landroid/os/Parcel$ReadWriteHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParserCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteHelper"
.end annotation


# instance fields
.field private final mIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mParcel:Landroid/os/Parcel;

.field private final mStartPos:I

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
    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    .line 17
    .line 18
    iput-object p1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStartPos:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public finishAndUninstall()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    .line 14
    .line 15
    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    .line 21
    .line 22
    iget v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStartPos:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public writeString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
