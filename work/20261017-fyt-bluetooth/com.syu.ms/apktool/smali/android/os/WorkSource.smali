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

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "WorkSource"

.field public static sGoneWork:Landroid/os/WorkSource;

.field public static sNewbWork:Landroid/os/WorkSource;

.field public static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field public mNames:[Ljava/lang/String;

.field public mNum:I

.field public mUids:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 2
    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

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

    const-string v0, "Name can\'t be null"

    .line 16
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput v3, v2, v0

    .line 18
    iput-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    new-array p1, v1, [Ljava/lang/String;

    aput-object p2, p1, v3

    const/4 p2, 0x0

    aput-object p2, p1, v0

    .line 19
    iput-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    return-void
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

    aget v0, v0, p2

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    aget v1, v1, p3

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object p2, v0, p2

    iget-object p1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

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
    invoke-static {v0, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    :cond_1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_2

    .line 8
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
    invoke-static {v0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
    invoke-static {v0, v2, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    invoke-static {v2, p1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
    invoke-static {v0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 3
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 4
    iget-object p1, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v0, :cond_3

    if-ge v4, v2, :cond_3

    .line 5
    aget v6, p1, v4

    aget v7, v1, v3

    if-ne v6, v7, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_0

    add-int/lit8 v5, v3, 0x1

    sub-int v6, v0, v3

    .line 6
    invoke-static {v1, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    .line 7
    :cond_1
    aget v6, p1, v4

    aget v7, v1, v3

    if-le v6, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return v5
.end method

.method private removeUidsAndNames(Landroid/os/WorkSource;)Z
    .locals 10

    .line 1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 2
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 3
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 4
    iget v3, p1, Landroid/os/WorkSource;->mNum:I

    .line 5
    iget-object v4, p1, Landroid/os/WorkSource;->mUids:[I

    .line 6
    iget-object p1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v0, :cond_4

    if-ge v6, v3, :cond_4

    .line 7
    aget v8, v4, v6

    aget v9, v1, v5

    if-ne v8, v9, :cond_1

    aget-object v8, p1, v6

    aget-object v9, v2, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_0

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v0, v5

    .line 8
    invoke-static {v1, v7, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-static {v2, v7, v2, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_0

    .line 10
    :cond_1
    aget v8, v4, v6

    aget v9, v1, v5

    if-gt v8, v9, :cond_3

    aget v8, v4, v6

    aget v9, v1, v5

    if-ne v8, v9, :cond_2

    aget-object v8, p1, v6

    aget-object v9, v2, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_4
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return v7
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsLocked(Landroid/os/WorkSource;ZZ)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    const-string v2, " does not"

    if-lez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Other "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has names, but target "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_2
    :goto_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_4

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Target "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has names, but other "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z

    move-result p1

    return p1
.end method

.method private updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    .line 2
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 3
    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 4
    :cond_0
    :goto_0
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v3, v6, :cond_2

    if-ge v4, v0, :cond_1

    goto :goto_1

    :cond_1
    return v5

    :cond_2
    :goto_1
    if-ge v3, v6, :cond_b

    const/4 v6, -0x1

    if-ge v4, v0, :cond_3

    .line 5
    invoke-direct {p0, p1, v3, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v7

    if-lez v7, :cond_4

    goto :goto_5

    :cond_3
    move v7, v6

    :cond_4
    if-nez p2, :cond_6

    if-ge v4, v0, :cond_5

    if-nez v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    move v8, v3

    :goto_2
    if-gez v7, :cond_9

    .line 6
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    iget-object v10, p0, Landroid/os/WorkSource;->mUids:[I

    aget v10, v10, v8

    iget-object v11, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-static {v9, v10, v11}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v9

    sput-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    add-int/lit8 v8, v8, 0x1

    .line 7
    iget v9, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v8, v9, :cond_7

    goto :goto_3

    :cond_7
    if-ge v4, v0, :cond_8

    .line 8
    invoke-direct {p0, p1, v8, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v7

    goto :goto_2

    :cond_8
    move v7, v6

    goto :goto_2

    :cond_9
    :goto_3
    if-ge v3, v8, :cond_a

    .line 9
    iget-object v6, p0, Landroid/os/WorkSource;->mUids:[I

    iget v9, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v9, v8

    invoke-static {v6, v8, v6, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v6, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v9, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v9, v8

    invoke-static {v6, v8, v6, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v8, v3

    sub-int/2addr v6, v8

    iput v6, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_4

    :cond_a
    move v3, v8

    .line 12
    :goto_4
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v3, v6, :cond_0

    if-nez v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_b
    :goto_5
    aget v5, v1, v4

    aget-object v6, v2, v4

    invoke-direct {p0, v3, v5, v6}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    if-eqz p3, :cond_c

    .line 14
    sget-object v5, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v6, v1, v4

    aget-object v7, v2, v4

    invoke-static {v5, v6, v7}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v5

    sput-object v5, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    :cond_c
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private updateUidsLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 10

    .line 1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 2
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 3
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 4
    iget-object p1, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_0
    :goto_0
    if-lt v4, v0, :cond_2

    if-ge v5, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 6
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    return v6

    :cond_2
    :goto_1
    if-ge v4, v0, :cond_9

    if-ge v5, v2, :cond_3

    .line 7
    aget v7, p1, v5

    aget v8, v1, v4

    if-ge v7, v8, :cond_3

    goto :goto_4

    :cond_3
    if-nez p2, :cond_5

    if-ge v5, v2, :cond_4

    .line 8
    aget v7, p1, v5

    aget v8, v1, v4

    if-ne v7, v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v7, v4

    :goto_2
    if-ge v7, v0, :cond_7

    if-ge v5, v2, :cond_6

    .line 9
    aget v8, p1, v5

    aget v9, v1, v7

    if-le v8, v9, :cond_7

    .line 10
    :cond_6
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v9, v1, v7

    invoke-static {v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    if-ge v4, v7, :cond_8

    sub-int v8, v0, v7

    .line 11
    invoke-static {v1, v7, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v7, v4

    sub-int/2addr v0, v7

    goto :goto_3

    :cond_8
    move v4, v7

    :goto_3
    if-ge v4, v0, :cond_0

    if-ge v5, v2, :cond_0

    .line 12
    aget v7, p1, v5

    aget v8, v1, v4

    if-ne v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    :goto_4
    if-nez v1, :cond_a

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 13
    aget v6, p1, v5

    aput v6, v1, v3

    goto :goto_5

    .line 14
    :cond_a
    array-length v6, v1

    if-lt v0, v6, :cond_d

    .line 15
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    new-array v6, v6, [I

    if-lez v4, :cond_b

    .line 16
    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    if-ge v4, v0, :cond_c

    add-int/lit8 v7, v4, 0x1

    sub-int v8, v0, v4

    .line 17
    invoke-static {v1, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    :cond_c
    aget v1, p1, v5

    aput v1, v6, v4

    move-object v1, v6

    goto :goto_5

    :cond_d
    if-ge v4, v0, :cond_e

    add-int/lit8 v6, v4, 0x1

    sub-int v7, v0, v4

    .line 19
    invoke-static {v1, v4, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    :cond_e
    aget v6, p1, v5

    aput v6, v1, v4

    :goto_5
    if-eqz p3, :cond_f

    .line 21
    sget-object v6, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v7, p1, v5

    invoke-static {v6, v7}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v6

    sput-object v6, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    :cond_f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding without name to named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(ILjava/lang/String;)Z
    .locals 5

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

    aget v4, v3, v0

    if-le v4, p1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    aget v3, v3, v0

    if-ne v3, p1, :cond_3

    .line 17
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

    .line 18
    :cond_4
    :goto_1
    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    return v1

    .line 19
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding name to unnamed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void
.end method

.method public clearNames()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 3
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v3, :cond_1

    .line 5
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v3, v1

    add-int/lit8 v5, v1, -0x1

    aget v5, v3, v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 6
    :cond_0
    aget v4, v3, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

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
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 4
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 5
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 6
    iget-object p1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_3

    .line 7
    aget v7, v1, v6

    aget v8, v3, v6

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 8
    aget-object v7, v4, v6

    aget-object v8, p1, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    return v2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
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

    .line 1
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget p1, v0, p1

    return p1
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    .line 1
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

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v3, :cond_0

    shl-int/lit8 v3, v2, 0x4

    ushr-int/lit8 v2, v2, 0x1c

    or-int/2addr v2, v3

    .line 2
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v1

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4
    :goto_1
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v1, :cond_1

    shl-int/lit8 v1, v2, 0x4

    ushr-int/lit8 v2, v2, 0x1c

    or-int/2addr v1, v2

    .line 5
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_4

    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUids(Landroid/os/WorkSource;)Z

    move-result p1

    return p1

    :cond_1
    const-string v1, " does not"

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUidsAndNames(Landroid/os/WorkSource;)Z

    move-result p1

    return p1

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has names, but other "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has names, but target "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    const/4 p1, 0x0

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

    const-string v0, "Name can\'t be null"

    .line 18
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 20
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 21
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 22
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 23
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 24
    iget-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p2, p1, v1

    return-void
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
    invoke-static {v2, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 3
    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    const/4 v2, 0x1

    .line 4
    invoke-direct {p0, p1, v2, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 5
    sget-object p1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez p1, :cond_1

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/WorkSource;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 7
    sget-object p1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object p1, v1, v2

    .line 8
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public stripNames()Landroid/os/WorkSource;
    .locals 4

    .line 1
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-gtz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v2, v3, :cond_3

    .line 5
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v2

    if-eqz v2, :cond_1

    if-eq v1, v3, :cond_2

    .line 6
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/WorkSource;->add(I)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkSource{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_0

    const-string v2, ", "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, " "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "}"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3
    iget-object p2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
