.class public Landroid/app/admin/PasswordMetrics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PasswordMetrics$CharacterCatagory;
    }
.end annotation


# static fields
.field private static final CHAR_DIGIT:I = 0x2

.field private static final CHAR_LOWER_CASE:I = 0x0

.field private static final CHAR_SYMBOL:I = 0x3

.field private static final CHAR_UPPER_CASE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3


# instance fields
.field public length:I

.field public letters:I

.field public lowerCase:I

.field public nonLetter:I

.field public numeric:I

.field public quality:I

.field public symbols:I

.field public upperCase:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/PasswordMetrics$1;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics$1;-><init>()V

    sput-object v0, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 4
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 5
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 6
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 7
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 8
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 9
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 10
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 13
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 14
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 15
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 16
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 17
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 18
    iput p1, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 19
    iput p2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    .line 21
    iput p3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 22
    iput p4, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 23
    iput p5, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 24
    iput p6, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 25
    iput p7, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 26
    iput p8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 29
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 30
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 31
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 32
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 33
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 34
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 35
    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/admin/PasswordMetrics$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/admin/PasswordMetrics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static categoryChar(C)I
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public static computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    move v3, v1

    .line 8
    move v4, v3

    .line 9
    move v5, v4

    .line 10
    move v6, v5

    .line 11
    move v7, v6

    .line 12
    move v8, v7

    .line 13
    :goto_0
    const/4 v9, 0x3

    .line 14
    const/4 v10, 0x1

    .line 15
    if-ge v1, v2, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v11

    .line 21
    invoke-static {v11}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    if-eqz v11, :cond_3

    .line 26
    .line 27
    if-eq v11, v10, :cond_2

    .line 28
    .line 29
    const/4 v10, 0x2

    .line 30
    if-eq v11, v10, :cond_1

    .line 31
    .line 32
    if-eq v11, v9, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    if-lez v6, :cond_5

    .line 56
    .line 57
    move v1, v10

    .line 58
    goto :goto_3

    .line 59
    :cond_5
    move v1, v0

    .line 60
    :goto_3
    add-int v11, v3, v7

    .line 61
    .line 62
    if-lez v11, :cond_6

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_6
    move v10, v0

    .line 66
    :goto_4
    if-eqz v10, :cond_7

    .line 67
    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    const/high16 p0, 0x50000

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_7
    if-eqz v10, :cond_8

    .line 74
    .line 75
    const/high16 p0, 0x40000

    .line 76
    .line 77
    :goto_5
    move v1, p0

    .line 78
    goto :goto_6

    .line 79
    :cond_8
    if-eqz v1, :cond_a

    .line 80
    .line 81
    invoke-static {p0}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-le p0, v9, :cond_9

    .line 86
    .line 87
    const/high16 p0, 0x20000

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_9
    const/high16 p0, 0x30000

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_a
    move v1, v0

    .line 94
    :goto_6
    new-instance p0, Landroid/app/admin/PasswordMetrics;

    .line 95
    .line 96
    move-object v0, p0

    .line 97
    invoke-direct/range {v0 .. v8}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIII)V

    .line 98
    .line 99
    .line 100
    return-object p0
.end method

.method private static maxDiffCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0

    :cond_1
    return v0
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    move v5, v1

    .line 19
    move v6, v5

    .line 20
    move v7, v6

    .line 21
    move v8, v7

    .line 22
    move v4, v3

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    if-ge v4, v9, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    invoke-static {v9}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    sub-int v0, v9, v0

    .line 38
    .line 39
    if-ne v10, v2, :cond_3

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->maxDiffCategory(I)I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    if-le v11, v12, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    if-eqz v7, :cond_2

    .line 53
    .line 54
    if-eq v0, v8, :cond_2

    .line 55
    .line 56
    sub-int v6, v4, v6

    .line 57
    .line 58
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    add-int/lit8 v6, v4, -0x1

    .line 63
    .line 64
    :cond_2
    move v8, v0

    .line 65
    move v7, v3

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    :goto_1
    sub-int v0, v4, v6

    .line 68
    .line 69
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    move v5, v0

    .line 74
    move v7, v1

    .line 75
    move v6, v4

    .line 76
    move v2, v10

    .line 77
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    move v0, v9

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    sub-int/2addr p0, v6

    .line 86
    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/app/admin/PasswordMetrics;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/app/admin/PasswordMetrics;

    .line 8
    .line 9
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 10
    .line 11
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 16
    .line 17
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->length:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 22
    .line 23
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 28
    .line 29
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 34
    .line 35
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 36
    .line 37
    if-ne v0, v2, :cond_1

    .line 38
    .line 39
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 40
    .line 41
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 42
    .line 43
    if-ne v0, v2, :cond_1

    .line 44
    .line 45
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 46
    .line 47
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 48
    .line 49
    if-ne v0, v2, :cond_1

    .line 50
    .line 51
    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 52
    .line 53
    iget p1, p1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 54
    .line 55
    if-ne v0, p1, :cond_1

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_1
    return v1
.end method

.method public isDefault()Z
    .locals 1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-nez v0, :cond_0

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
    iget p2, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
