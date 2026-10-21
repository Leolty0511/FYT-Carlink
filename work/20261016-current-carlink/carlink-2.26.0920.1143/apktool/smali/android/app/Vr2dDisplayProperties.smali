.class public final Landroid/app/Vr2dDisplayProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Vr2dDisplayProperties$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Vr2dDisplayProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_VIRTUAL_DISPLAY_ENABLED:I = 0x1


# instance fields
.field private final mAddedFlags:I

.field private final mDpi:I

.field private final mHeight:I

.field private final mRemovedFlags:I

.field private final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/Vr2dDisplayProperties$1;

    invoke-direct {v0}, Landroid/app/Vr2dDisplayProperties$1;-><init>()V

    sput-object v0, Landroid/app/Vr2dDisplayProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIII)V

    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    .line 6
    iput p2, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    .line 7
    iput p3, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    .line 8
    iput p4, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 9
    iput p5, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILandroid/app/Vr2dDisplayProperties$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Vr2dDisplayProperties$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/app/Vr2dDisplayProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static toReadableFlags(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p0, v0

    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "{enabled"

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string/jumbo p0, "{"

    .line 10
    .line 11
    .line 12
    :goto_0
    const-string/jumbo v0, "}"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_7

    .line 7
    .line 8
    const-class v2, Landroid/app/Vr2dDisplayProperties;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Landroid/app/Vr2dDisplayProperties;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getFlags()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getFlags()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eq v2, v3, :cond_3

    .line 39
    .line 40
    return v1

    .line 41
    :cond_3
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eq v2, v3, :cond_4

    .line 50
    .line 51
    return v1

    .line 52
    :cond_4
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eq v2, v3, :cond_5

    .line 61
    .line 62
    return v1

    .line 63
    :cond_5
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ne v2, p1, :cond_6

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_6
    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 76
    :cond_7
    :goto_1
    return v1
.end method

.method public getDpi()I
    .locals 1

    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    return v0
.end method

.method public getRemovedFlags()I
    .locals 1

    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v0, v1

    .line 19
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Vr2dDisplayProperties{mWidth="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mHeight="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mDpi="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", flags="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 39
    .line 40
    invoke-static {v1}, Landroid/app/Vr2dDisplayProperties;->toReadableFlags(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", removed_flags="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    .line 53
    .line 54
    invoke-static {v1}, Landroid/app/Vr2dDisplayProperties;->toReadableFlags(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string/jumbo v2, "}"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
