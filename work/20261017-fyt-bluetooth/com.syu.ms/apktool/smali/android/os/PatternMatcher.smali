.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2


# instance fields
.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/PatternMatcher;->mType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 3
    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    return-void
.end method

.method public static matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    return v0

    .line 3
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_5

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_4

    move v0, v1

    :cond_4
    return v0

    .line 5
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v0

    move v6, v5

    :goto_0
    const/16 v7, 0x2a

    const/16 v8, 0x2e

    if-ge v5, p2, :cond_15

    if-ge v6, v3, :cond_15

    add-int/lit8 v5, v5, 0x1

    if-ge v5, p2, :cond_6

    .line 7
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_1

    :cond_6
    move v9, v0

    :goto_1
    const/16 v10, 0x5c

    if-ne v4, v10, :cond_7

    move v11, v1

    goto :goto_2

    :cond_7
    move v11, v0

    :goto_2
    if-eqz v11, :cond_9

    add-int/lit8 v5, v5, 0x1

    if-ge v5, p2, :cond_8

    .line 8
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_8
    move v4, v0

    :goto_3
    move v12, v9

    move v9, v4

    move v4, v12

    :cond_9
    if-ne v9, v7, :cond_13

    if-nez v11, :cond_10

    if-ne v4, v8, :cond_10

    add-int/lit8 v4, p2, -0x1

    if-lt v5, v4, :cond_a

    return v1

    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 9
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_c

    add-int/lit8 v5, v5, 0x1

    if-ge v5, p2, :cond_b

    .line 10
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_4

    :cond_b
    move v4, v0

    .line 11
    :cond_c
    :goto_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v3, :cond_c

    :goto_5
    if-ne v6, v3, :cond_e

    return v0

    :cond_e
    add-int/lit8 v5, v5, 0x1

    if-ge v5, p2, :cond_f

    .line 12
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_6

    :cond_f
    move v4, v0

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_10
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_11

    goto :goto_7

    :cond_11
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v3, :cond_10

    :goto_7
    add-int/lit8 v5, v5, 0x1

    if-ge v5, p2, :cond_12

    .line 14
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_12
    move v4, v0

    goto :goto_0

    :cond_13
    if-eq v4, v8, :cond_14

    .line 15
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_14

    return v0

    :cond_14
    add-int/lit8 v6, v6, 0x1

    move v4, v9

    goto/16 :goto_0

    :cond_15
    if-lt v5, p2, :cond_16

    if-lt v6, v3, :cond_16

    return v1

    :cond_16
    sub-int/2addr p2, v2

    if-ne v5, p2, :cond_17

    .line 16
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v8, :cond_17

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v7, :cond_17

    return v1

    :cond_17
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {v0, p1, v1}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "? "

    goto :goto_0

    :cond_0
    const-string v0, "GLOB: "

    goto :goto_0

    :cond_1
    const-string v0, "PREFIX: "

    goto :goto_0

    :cond_2
    const-string v0, "LITERAL: "

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
