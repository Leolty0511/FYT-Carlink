.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "WorkSource"

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field mNames:[Ljava/lang/String;

.field mNum:I

.field mUids:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/WorkSource;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 8
    .line 9
    new-instance v0, Landroid/os/WorkSource$1;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    aput v2, v1, v0

    .line 13
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput v3, v2, v0

    .line 17
    iput-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    new-array p1, v1, [Ljava/lang/String;

    aput-object p2, p1, v3

    const/4 p2, 0x0

    aput-object p2, p1, v0

    .line 18
    iput-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Name can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/os/WorkSource;->mNum:I

    return-void

    .line 5
    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 6
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 8
    iget-object p1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    :cond_1
    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_2
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 10
    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private static addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0, p1}, Landroid/os/WorkSource;-><init>(I)V

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    return-object p0
.end method

.method private static addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 1

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 4
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    return-object p0
.end method

.method private compare(Landroid/os/WorkSource;II)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 2
    .line 3
    aget v0, v0, p2

    .line 4
    .line 5
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 6
    .line 7
    aget v1, v1, p3

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object p2, v0, p2

    .line 16
    .line 17
    iget-object p1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 18
    .line 19
    aget-object p1, p1, p3

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method private insert(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, p1, v1

    .line 3
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    .line 4
    :cond_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    array-length v4, v0

    if-lt v3, v4, :cond_3

    mul-int/lit8 v3, v3, 0x3

    .line 5
    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    if-lez p1, :cond_1

    .line 6
    invoke-static {v0, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 7
    :cond_1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_2

    .line 8
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 9
    :cond_2
    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 10
    aput p2, v3, p1

    .line 11
    iget p1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    :cond_3
    if-ge p1, v3, :cond_4

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v3, p1

    .line 12
    invoke-static {v0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 13
    :cond_4
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 14
    iget p1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void
.end method

.method private insert(IILjava/lang/String;)V
    .locals 6

    .line 15
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x4

    new-array v0, p1, [I

    .line 16
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, v2

    new-array p1, p1, [Ljava/lang/String;

    .line 17
    iput-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, p1, v2

    .line 18
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    .line 19
    :cond_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    array-length v4, v0

    if-lt v3, v4, :cond_3

    mul-int/lit8 v4, v3, 0x3

    .line 20
    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    mul-int/lit8 v3, v3, 0x3

    .line 21
    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    if-lez p1, :cond_1

    .line 22
    invoke-static {v0, v2, v4, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 23
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-static {v0, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    :cond_1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_2

    .line 25
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v5, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v2, p1, v4, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 26
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    :cond_2
    iput-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    .line 28
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 29
    aput p2, v4, p1

    .line 30
    aput-object p3, v3, p1

    .line 31
    iget p1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    :cond_3
    if-ge p1, v3, :cond_4

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v3, p1

    .line 32
    invoke-static {v0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 33
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :cond_4
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 35
    iget-object p2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, p2, p1

    .line 36
    iget p1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void
.end method

.method private removeUids(Landroid/os/WorkSource;)Z
    .locals 8

    .line 1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 4
    .line 5
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 6
    .line 7
    iget-object p1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    move v5, v4

    .line 12
    :goto_0
    if-ge v3, v0, :cond_3

    .line 13
    .line 14
    if-ge v4, v2, :cond_3

    .line 15
    .line 16
    aget v6, p1, v4

    .line 17
    .line 18
    aget v7, v1, v3

    .line 19
    .line 20
    if-ne v6, v7, :cond_1

    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    if-ge v3, v0, :cond_0

    .line 25
    .line 26
    add-int/lit8 v5, v3, 0x1

    .line 27
    .line 28
    sub-int v6, v0, v3

    .line 29
    .line 30
    invoke-static {v1, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-le v6, v7, :cond_2

    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 46
    .line 47
    return v5
.end method

.method private removeUidsAndNames(Landroid/os/WorkSource;)Z
    .locals 10

    .line 1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 4
    .line 5
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p1, Landroid/os/WorkSource;->mNum:I

    .line 8
    .line 9
    iget-object v4, p1, Landroid/os/WorkSource;->mUids:[I

    .line 10
    .line 11
    iget-object p1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    move v6, v5

    .line 15
    move v7, v6

    .line 16
    :goto_0
    if-ge v5, v0, :cond_4

    .line 17
    .line 18
    if-ge v6, v3, :cond_4

    .line 19
    .line 20
    aget v8, v4, v6

    .line 21
    .line 22
    aget v9, v1, v5

    .line 23
    .line 24
    if-ne v8, v9, :cond_1

    .line 25
    .line 26
    aget-object v8, p1, v6

    .line 27
    .line 28
    aget-object v9, v2, v5

    .line 29
    .line 30
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-eqz v8, :cond_1

    .line 35
    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    if-ge v5, v0, :cond_0

    .line 39
    .line 40
    add-int/lit8 v7, v5, 0x1

    .line 41
    .line 42
    sub-int v8, v0, v5

    .line 43
    .line 44
    invoke-static {v1, v7, v1, v5, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v7, v2, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    aget v8, v4, v6

    .line 55
    .line 56
    aget v9, v1, v5

    .line 57
    .line 58
    if-gt v8, v9, :cond_3

    .line 59
    .line 60
    if-ne v8, v9, :cond_2

    .line 61
    .line 62
    aget-object v8, p1, v6

    .line 63
    .line 64
    aget-object v9, v2, v5

    .line 65
    .line 66
    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-lez v8, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 80
    .line 81
    return v7
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsLocked(Landroid/os/WorkSource;ZZ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 15
    .line 16
    const-string v2, " does not"

    .line 17
    .line 18
    if-lez v1, :cond_2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Other "

    .line 28
    .line 29
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " has names, but target "

    .line 36
    .line 37
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2

    .line 54
    :cond_2
    :goto_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    .line 55
    .line 56
    if-lez v0, :cond_4

    .line 57
    .line 58
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v0, "Target "

    .line 68
    .line 69
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, " has names, but other "

    .line 76
    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p2

    .line 94
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    return p1
.end method

.method private updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    .line 2
    .line 3
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 4
    .line 5
    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    move v5, v4

    .line 10
    :cond_0
    :goto_0
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    .line 11
    .line 12
    if-lt v3, v6, :cond_2

    .line 13
    .line 14
    if-ge v4, v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    return v5

    .line 18
    :cond_2
    :goto_1
    if-ge v3, v6, :cond_b

    .line 19
    .line 20
    const/4 v6, -0x1

    .line 21
    if-ge v4, v0, :cond_3

    .line 22
    .line 23
    invoke-direct {p0, p1, v3, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-lez v7, :cond_4

    .line 28
    .line 29
    goto :goto_5

    .line 30
    :cond_3
    move v7, v6

    .line 31
    :cond_4
    if-nez p2, :cond_6

    .line 32
    .line 33
    if-ge v4, v0, :cond_5

    .line 34
    .line 35
    if-nez v7, :cond_5

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_6
    move v8, v3

    .line 43
    :goto_2
    if-gez v7, :cond_9

    .line 44
    .line 45
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 46
    .line 47
    iget-object v10, p0, Landroid/os/WorkSource;->mUids:[I

    .line 48
    .line 49
    aget v10, v10, v8

    .line 50
    .line 51
    iget-object v11, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 52
    .line 53
    aget-object v11, v11, v8

    .line 54
    .line 55
    invoke-static {v9, v10, v11}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    sput-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 60
    .line 61
    add-int/lit8 v8, v8, 0x1

    .line 62
    .line 63
    iget v9, p0, Landroid/os/WorkSource;->mNum:I

    .line 64
    .line 65
    if-lt v8, v9, :cond_7

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_7
    if-ge v4, v0, :cond_8

    .line 69
    .line 70
    invoke-direct {p0, p1, v8, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    goto :goto_2

    .line 75
    :cond_8
    move v7, v6

    .line 76
    goto :goto_2

    .line 77
    :cond_9
    :goto_3
    if-ge v3, v8, :cond_a

    .line 78
    .line 79
    iget-object v6, p0, Landroid/os/WorkSource;->mUids:[I

    .line 80
    .line 81
    iget v9, p0, Landroid/os/WorkSource;->mNum:I

    .line 82
    .line 83
    sub-int/2addr v9, v8

    .line 84
    invoke-static {v6, v8, v6, v3, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 85
    .line 86
    .line 87
    iget-object v6, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 88
    .line 89
    iget v9, p0, Landroid/os/WorkSource;->mNum:I

    .line 90
    .line 91
    sub-int/2addr v9, v8

    .line 92
    invoke-static {v6, v8, v6, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    .line 96
    .line 97
    sub-int/2addr v8, v3

    .line 98
    sub-int/2addr v6, v8

    .line 99
    iput v6, p0, Landroid/os/WorkSource;->mNum:I

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_a
    move v3, v8

    .line 103
    :goto_4
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    .line 104
    .line 105
    if-ge v3, v6, :cond_0

    .line 106
    .line 107
    if-nez v7, :cond_0

    .line 108
    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_b
    :goto_5
    aget v5, v1, v4

    .line 115
    .line 116
    aget-object v6, v2, v4

    .line 117
    .line 118
    invoke-direct {p0, v3, v5, v6}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    if-eqz p3, :cond_c

    .line 122
    .line 123
    sget-object v5, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 124
    .line 125
    aget v6, v1, v4

    .line 126
    .line 127
    aget-object v7, v2, v4

    .line 128
    .line 129
    invoke-static {v5, v6, v7}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    sput-object v5, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 134
    .line 135
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 136
    .line 137
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    const/4 v5, 0x1

    .line 140
    goto/16 :goto_0
.end method

.method private updateUidsLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 10

    .line 1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 4
    .line 5
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 6
    .line 7
    iget-object p1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    move v5, v4

    .line 12
    move v6, v5

    .line 13
    :cond_0
    :goto_0
    if-lt v4, v0, :cond_2

    .line 14
    .line 15
    if-ge v5, v2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 19
    .line 20
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 21
    .line 22
    return v6

    .line 23
    :cond_2
    :goto_1
    if-ge v4, v0, :cond_9

    .line 24
    .line 25
    if-ge v5, v2, :cond_3

    .line 26
    .line 27
    aget v7, p1, v5

    .line 28
    .line 29
    aget v8, v1, v4

    .line 30
    .line 31
    if-ge v7, v8, :cond_3

    .line 32
    .line 33
    goto :goto_4

    .line 34
    :cond_3
    if-nez p2, :cond_5

    .line 35
    .line 36
    if-ge v5, v2, :cond_4

    .line 37
    .line 38
    aget v7, p1, v5

    .line 39
    .line 40
    aget v8, v1, v4

    .line 41
    .line 42
    if-ne v7, v8, :cond_4

    .line 43
    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_5
    move v7, v4

    .line 50
    :goto_2
    if-ge v7, v0, :cond_7

    .line 51
    .line 52
    if-ge v5, v2, :cond_6

    .line 53
    .line 54
    aget v8, p1, v5

    .line 55
    .line 56
    aget v9, v1, v7

    .line 57
    .line 58
    if-le v8, v9, :cond_7

    .line 59
    .line 60
    :cond_6
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 61
    .line 62
    aget v9, v1, v7

    .line 63
    .line 64
    invoke-static {v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 69
    .line 70
    add-int/lit8 v7, v7, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_7
    if-ge v4, v7, :cond_8

    .line 74
    .line 75
    sub-int v8, v0, v7

    .line 76
    .line 77
    invoke-static {v1, v7, v1, v4, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 78
    .line 79
    .line 80
    sub-int/2addr v7, v4

    .line 81
    sub-int/2addr v0, v7

    .line 82
    goto :goto_3

    .line 83
    :cond_8
    move v4, v7

    .line 84
    :goto_3
    if-ge v4, v0, :cond_0

    .line 85
    .line 86
    if-ge v5, v2, :cond_0

    .line 87
    .line 88
    aget v7, p1, v5

    .line 89
    .line 90
    aget v8, v1, v4

    .line 91
    .line 92
    if-ne v7, v8, :cond_0

    .line 93
    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_9
    :goto_4
    if-nez v1, :cond_a

    .line 100
    .line 101
    const/4 v1, 0x4

    .line 102
    new-array v1, v1, [I

    .line 103
    .line 104
    aget v6, p1, v5

    .line 105
    .line 106
    aput v6, v1, v3

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_a
    array-length v6, v1

    .line 110
    if-lt v0, v6, :cond_d

    .line 111
    .line 112
    array-length v6, v1

    .line 113
    mul-int/lit8 v6, v6, 0x3

    .line 114
    .line 115
    div-int/lit8 v6, v6, 0x2

    .line 116
    .line 117
    new-array v6, v6, [I

    .line 118
    .line 119
    if-lez v4, :cond_b

    .line 120
    .line 121
    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 122
    .line 123
    .line 124
    :cond_b
    if-ge v4, v0, :cond_c

    .line 125
    .line 126
    add-int/lit8 v7, v4, 0x1

    .line 127
    .line 128
    sub-int v8, v0, v4

    .line 129
    .line 130
    invoke-static {v1, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 131
    .line 132
    .line 133
    :cond_c
    aget v1, p1, v5

    .line 134
    .line 135
    aput v1, v6, v4

    .line 136
    .line 137
    move-object v1, v6

    .line 138
    goto :goto_5

    .line 139
    :cond_d
    if-ge v4, v0, :cond_e

    .line 140
    .line 141
    add-int/lit8 v6, v4, 0x1

    .line 142
    .line 143
    sub-int v7, v0, v4

    .line 144
    .line 145
    invoke-static {v1, v4, v1, v6, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 146
    .line 147
    .line 148
    :cond_e
    aget v6, p1, v5

    .line 149
    .line 150
    aput v6, v1, v4

    .line 151
    .line 152
    :goto_5
    if-eqz p3, :cond_f

    .line 153
    .line 154
    sget-object v6, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 155
    .line 156
    aget v7, p1, v5

    .line 157
    .line 158
    invoke-static {v6, v7}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    sput-object v6, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 163
    .line 164
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 165
    .line 166
    add-int/lit8 v4, v4, 0x1

    .line 167
    .line 168
    add-int/lit8 v5, v5, 0x1

    .line 169
    .line 170
    const/4 v6, 0x1

    .line 171
    goto/16 :goto_0
.end method


# virtual methods
.method public add(I)Z
    .locals 4

    .line 4
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 6
    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    return v1

    .line 7
    :cond_0
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v3, :cond_2

    .line 8
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v3, v2, v0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_1

    return v2

    :cond_1
    neg-int v0, v0

    sub-int/2addr v0, v1

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    return v1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding without name to named "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(ILjava/lang/String;)Z
    .locals 4

    .line 11
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 12
    invoke-direct {p0, v2, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_5

    move v0, v2

    .line 14
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v3, :cond_4

    .line 15
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    if-le v3, p1, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, p1, :cond_3

    .line 16
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_4
    :goto_1
    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    return v1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Adding name to unnamed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Landroid/os/WorkSource;)Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, v1, v1}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addReturningNewbs(I)Landroid/os/WorkSource;
    .locals 3

    .line 6
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 8
    iget-object v1, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, v0, v2, p1}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 10
    sget-object p1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3

    .line 1
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, p1, v1, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 4
    sget-object p1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void
.end method

.method public clearNames()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 7
    .line 8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    move v2, v1

    .line 12
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    .line 13
    .line 14
    if-ge v1, v3, :cond_1

    .line 15
    .line 16
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 17
    .line 18
    aget v4, v3, v1

    .line 19
    .line 20
    add-int/lit8 v5, v1, -0x1

    .line 21
    .line 22
    aget v5, v3, v5

    .line 23
    .line 24
    if-ne v4, v5, :cond_0

    .line 25
    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    aput v4, v3, v2

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .locals 9

    .line 1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 2
    .line 3
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 10
    .line 11
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 12
    .line 13
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move v6, v5

    .line 19
    :goto_0
    if-ge v6, v0, :cond_3

    .line 20
    .line 21
    aget v7, v1, v6

    .line 22
    .line 23
    aget v8, v3, v6

    .line 24
    .line 25
    if-eq v7, v8, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    if-eqz v4, :cond_2

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    aget-object v7, v4, v6

    .line 33
    .line 34
    aget-object v8, p1, v6

    .line 35
    .line 36
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-nez v7, :cond_2

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/WorkSource;

    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(I)I
    .locals 1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget p1, v0, p1

    return p1
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    .line 5
    .line 6
    if-ge v1, v3, :cond_0

    .line 7
    .line 8
    shl-int/lit8 v3, v2, 0x4

    .line 9
    .line 10
    ushr-int/lit8 v2, v2, 0x1c

    .line 11
    .line 12
    or-int/2addr v2, v3

    .line 13
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 14
    .line 15
    aget v3, v3, v1

    .line 16
    .line 17
    xor-int/2addr v2, v3

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    :goto_1
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 26
    .line 27
    if-ge v0, v1, :cond_1

    .line 28
    .line 29
    shl-int/lit8 v1, v2, 0x4

    .line 30
    .line 31
    ushr-int/lit8 v2, v2, 0x1c

    .line 32
    .line 33
    or-int/2addr v1, v2

    .line 34
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 35
    .line 36
    aget-object v2, v2, v0

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    xor-int/2addr v2, v1

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    return v2
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 2
    .line 3
    if-lez v0, :cond_4

    .line 4
    .line 5
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUids(Landroid/os/WorkSource;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    const-string v1, " does not"

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUidsAndNames(Landroid/os/WorkSource;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "Target "

    .line 41
    .line 42
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, " has names, but other "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v3, "Other "

    .line 72
    .line 73
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " has names, but target "

    .line 80
    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 99
    return p1
.end method

.method public set(I)V
    .locals 2

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 15
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    return-void
.end method

.method public set(ILjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 19
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 20
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 21
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 22
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 23
    iget-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p2, p1, v1

    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Name can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Landroid/os/WorkSource;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void

    .line 2
    :cond_0
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 3
    iget-object v2, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 4
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v4, :cond_1

    array-length v5, v4

    if-lt v5, v1, :cond_1

    .line 5
    invoke-static {v2, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 7
    :goto_0
    iget-object p1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 8
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v2, v1

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v2, v3, :cond_2

    .line 9
    invoke-static {p1, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_1

    .line 11
    :cond_3
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_4
    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 13
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 4

    .line 1
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 6
    .line 7
    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {p0, p1, v2, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 11
    .line 12
    .line 13
    sget-object p1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :cond_1
    :goto_0
    const/4 v1, 0x2

    .line 25
    new-array v1, v1, [Landroid/os/WorkSource;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object p1, v1, v3

    .line 29
    .line 30
    sget-object p1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 31
    .line 32
    aput-object p1, v1, v2

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-object v1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public stripNames()Landroid/os/WorkSource;
    .locals 4

    .line 1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/WorkSource;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Landroid/os/WorkSource;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    .line 18
    .line 19
    if-ge v1, v2, :cond_3

    .line 20
    .line 21
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 22
    .line 23
    aget v2, v2, v1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    if-eq v3, v2, :cond_2

    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->add(I)Z

    .line 31
    .line 32
    .line 33
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WorkSource{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v2, ", "

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 21
    .line 22
    aget v2, v2, v1

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-string v2, " "

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 37
    .line 38
    aget-object v2, v2, v1

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string/jumbo v1, "}"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/os/WorkSource;->mNum:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    const-wide v1, 0x21100000001L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 20
    .line 21
    aget v3, v3, v0

    .line 22
    .line 23
    const-wide v4, 0x10300000001L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const-wide v4, 0x10e00000002L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    aget-object v3, v3, v0

    .line 41
    .line 42
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
