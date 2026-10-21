.class public final Landroid/os/Bundle;
.super Landroid/os/BaseBundle;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/Bundle;

.field static final FLAG_ALLOW_FDS:I = 0x400

.field static final FLAG_HAS_FDS:I = 0x100

.field static final FLAG_HAS_FDS_KNOWN:I = 0x200

.field public static final STRIPPED:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 7
    .line 8
    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    .line 9
    .line 10
    iput-object v1, v0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    .line 18
    .line 19
    const-string v1, "STRIPPED"

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/os/Bundle$1;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    const/16 v0, 0x600

    .line 2
    iput v0, p0, Landroid/os/BaseBundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    const/16 p1, 0x600

    .line 12
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 14
    iget p1, p1, Landroid/os/BaseBundle;->mFlags:I

    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;)V

    const/16 p1, 0x400

    .line 4
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 5
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    const/16 p1, 0x400

    .line 7
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 8
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    return-void
.end method

.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    const/16 p1, 0x600

    .line 16
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;)V

    const/16 p1, 0x600

    .line 10
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Z)V

    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private maybePrefillHasFds()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 12
    .line 13
    or-int/lit16 v0, v0, 0x300

    .line 14
    .line 15
    iput v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 19
    .line 20
    or-int/lit16 v0, v0, 0x200

    .line 21
    .line 22
    iput v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public static setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/BaseBundle;->clear()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x600

    .line 5
    .line 6
    iput v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 7
    .line 8
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public deepCopy()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->copyInternal(Landroid/os/BaseBundle;Z)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    return v0
.end method

.method public filterValues()Landroid/os/Bundle;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    move-object v2, p0

    .line 15
    :goto_0
    if-ltz v1, :cond_7

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    instance-of v4, v3, Landroid/os/Bundle;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    move-object v4, v3

    .line 33
    check-cast v4, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/os/Bundle;->filterValues()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eq v4, v3, :cond_5

    .line 40
    .line 41
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 42
    .line 43
    if-ne v0, v3, :cond_1

    .line 44
    .line 45
    new-instance v0, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 51
    .line 52
    move-object v5, v2

    .line 53
    move-object v2, v0

    .line 54
    move-object v0, v5

    .line 55
    :cond_1
    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "android."

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 77
    .line 78
    if-ne v0, v3, :cond_4

    .line 79
    .line 80
    new-instance v2, Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-direct {v2, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v2, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    .line 87
    :cond_4
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    move-object v2, p0

    .line 94
    :cond_7
    iget v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 95
    .line 96
    or-int/lit16 v0, v0, 0x200

    .line 97
    .line 98
    and-int/lit16 v0, v0, -0x101

    .line 99
    .line 100
    iput v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 101
    .line 102
    return-object v2
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    :try_start_0
    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v2

    .line 18
    const-string v3, "IBinder"

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    :try_start_0
    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v2

    .line 18
    const-string v3, "Bundle"

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;)B

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;)C

    move-result p1

    return p1
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result p1

    return p1
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object p1

    return-object p1
.end method

.method public getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-super {p0}, Landroid/os/BaseBundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    return-object p1
.end method

.method public getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    :try_start_0
    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v2

    .line 18
    const-string v3, "IBinder"

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    :try_start_0
    check-cast v0, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v2

    .line 18
    const-string v3, "Parcelable"

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    :try_start_0
    move-object v2, v0

    .line 15
    check-cast v2, [Landroid/os/Parcelable;

    .line 16
    .line 17
    check-cast v2, [Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object v2

    .line 20
    :catch_0
    move-exception v2

    .line 21
    const-string v3, "Parcelable[]"

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v2

    .line 18
    const-string v3, "ArrayList"

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    return-object p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;)S

    move-result p1

    return p1
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result p1

    return p1
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 3

    .line 3
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :try_start_0
    check-cast v0, Landroid/util/Size;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Size"

    .line 6
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSizeF(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    check-cast v0, Landroid/util/SizeF;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    const-string v2, "SizeF"

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method public getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    :try_start_0
    check-cast v0, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v2

    .line 18
    const-string v3, "SparseArray"

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public hasFileDescriptors()Z
    .locals 7

    .line 1
    iget v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_b

    .line 8
    .line 9
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    :goto_0
    move v3, v2

    .line 20
    goto/16 :goto_7

    .line 21
    .line 22
    :cond_0
    move v3, v1

    .line 23
    goto/16 :goto_7

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-int/2addr v0, v2

    .line 32
    move v3, v1

    .line 33
    :goto_1
    if-ltz v0, :cond_9

    .line 34
    .line 35
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    instance-of v5, v4, Landroid/os/Parcelable;

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    check-cast v4, Landroid/os/Parcelable;

    .line 46
    .line 47
    invoke-interface {v4}, Landroid/os/Parcelable;->describeContents()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    and-int/2addr v4, v2

    .line 52
    if-eqz v4, :cond_8

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    instance-of v5, v4, [Landroid/os/Parcelable;

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    check-cast v4, [Landroid/os/Parcelable;

    .line 60
    .line 61
    check-cast v4, [Landroid/os/Parcelable;

    .line 62
    .line 63
    array-length v5, v4

    .line 64
    sub-int/2addr v5, v2

    .line 65
    :goto_2
    if-ltz v5, :cond_8

    .line 66
    .line 67
    aget-object v6, v4, v5

    .line 68
    .line 69
    if-eqz v6, :cond_3

    .line 70
    .line 71
    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    and-int/2addr v6, v2

    .line 76
    if-eqz v6, :cond_3

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    instance-of v5, v4, Landroid/util/SparseArray;

    .line 83
    .line 84
    if-eqz v5, :cond_6

    .line 85
    .line 86
    check-cast v4, Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    sub-int/2addr v5, v2

    .line 93
    :goto_3
    if-ltz v5, :cond_8

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Landroid/os/Parcelable;

    .line 100
    .line 101
    if-eqz v6, :cond_5

    .line 102
    .line 103
    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    and-int/2addr v6, v2

    .line 108
    if-eqz v6, :cond_5

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_6
    instance-of v5, v4, Ljava/util/ArrayList;

    .line 115
    .line 116
    if-eqz v5, :cond_8

    .line 117
    .line 118
    check-cast v4, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_8

    .line 125
    .line 126
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    instance-of v5, v5, Landroid/os/Parcelable;

    .line 131
    .line 132
    if-eqz v5, :cond_8

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    sub-int/2addr v5, v2

    .line 139
    :goto_4
    if-ltz v5, :cond_8

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    check-cast v6, Landroid/os/Parcelable;

    .line 146
    .line 147
    if-eqz v6, :cond_7

    .line 148
    .line 149
    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    and-int/2addr v6, v2

    .line 154
    if-eqz v6, :cond_7

    .line 155
    .line 156
    :goto_5
    move v3, v2

    .line 157
    goto :goto_6

    .line 158
    :cond_7
    add-int/lit8 v5, v5, -0x1

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_8
    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :cond_9
    :goto_7
    if-eqz v3, :cond_a

    .line 166
    .line 167
    iget v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 168
    .line 169
    or-int/lit16 v0, v0, 0x100

    .line 170
    .line 171
    iput v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_a
    iget v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 175
    .line 176
    and-int/lit16 v0, v0, -0x101

    .line 177
    .line 178
    iput v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 179
    .line 180
    :goto_8
    iget v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 181
    .line 182
    or-int/lit16 v0, v0, 0x200

    .line 183
    .line 184
    iput v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 185
    .line 186
    :cond_b
    iget v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 187
    .line 188
    and-int/lit16 v0, v0, 0x100

    .line 189
    .line 190
    if-eqz v0, :cond_c

    .line 191
    .line 192
    move v1, v2

    .line 193
    :cond_c
    return v1
.end method

.method public putAll(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/BaseBundle;->unparcel()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 8
    .line 9
    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 12
    .line 13
    .line 14
    iget v0, p1, Landroid/os/BaseBundle;->mFlags:I

    .line 15
    .line 16
    and-int/lit16 v0, v0, 0x100

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 21
    .line 22
    or-int/lit16 v0, v0, 0x100

    .line 23
    .line 24
    iput v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 25
    .line 26
    :cond_0
    iget p1, p1, Landroid/os/BaseBundle;->mFlags:I

    .line 27
    .line 28
    and-int/lit16 p1, p1, 0x200

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 33
    .line 34
    and-int/lit16 p1, p1, -0x201

    .line 35
    .line 36
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByte(Ljava/lang/String;B)V

    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putChar(Ljava/lang/String;C)V

    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharArray(Ljava/lang/String;[C)V

    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void
.end method

.method public putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 10
    .line 11
    and-int/lit16 p1, p1, -0x201

    .line 12
    .line 13
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 14
    .line 15
    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 10
    .line 11
    and-int/lit16 p1, p1, -0x201

    .line 12
    .line 13
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 14
    .line 15
    return-void
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 10
    .line 11
    and-int/lit16 p1, p1, -0x201

    .line 12
    .line 13
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 14
    .line 15
    return-void
.end method

.method public putParcelableList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 10
    .line 11
    and-int/lit16 p1, p1, -0x201

    .line 12
    .line 13
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 14
    .line 15
    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShort(Ljava/lang/String;S)V

    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShortArray(Ljava/lang/String;[S)V

    return-void
.end method

.method public putSize(Ljava/lang/String;Landroid/util/Size;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 10
    .line 11
    and-int/lit16 p1, p1, -0x201

    .line 12
    .line 13
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 14
    .line 15
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x400

    .line 5
    .line 6
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/os/Bundle;->maybePrefillHasFds()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->remove(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 5
    .line 6
    and-int/lit16 v0, p1, 0x100

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    and-int/lit16 p1, p1, -0x201

    .line 11
    .line 12
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setAllowFds(Z)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x400

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    or-int/lit16 p1, v0, 0x400

    .line 13
    .line 14
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    and-int/lit16 p1, v0, -0x401

    .line 18
    .line 19
    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 20
    .line 21
    :goto_1
    return v1
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/BaseBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public setDefusable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Landroid/os/BaseBundle;->mFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Landroid/os/BaseBundle;->mFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroid/os/BaseBundle;->mFlags:I

    :goto_0
    return-void
.end method

.method public declared-synchronized toShortString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "mParcelledData.dataSize="

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v0, "EMPTY_PARCEL"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    monitor-exit p0

    .line 38
    return-object v0

    .line 39
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    monitor-exit p0

    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0

    .line 49
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "Bundle[mParcelledData.dataSize="

    .line 2
    .line 3
    const-string v1, "Bundle["

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v0, "Bundle[EMPTY_PARCEL]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "]"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, "]"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    monitor-exit p0

    .line 69
    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    monitor-exit p0

    .line 72
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/os/BaseBundle;->mFlags:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p2

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 23
    .line 24
    .line 25
    throw p2
.end method
