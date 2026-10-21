.class public Landroid/content/RestrictionEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_CHOICE:I = 0x2

.field public static final TYPE_CHOICE_LEVEL:I = 0x3

.field public static final TYPE_MULTI_SELECT:I = 0x4

.field public static final TYPE_NULL:I


# instance fields
.field private choices:[Ljava/lang/String;

.field private currentValue:Ljava/lang/String;

.field private currentValues:[Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private values:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/RestrictionEntry$1;

    invoke-direct {v0}, Landroid/content/RestrictionEntry$1;-><init>()V

    sput-object v0, Landroid/content/RestrictionEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/RestrictionEntry;->type:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->title:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->description:Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Landroid/content/RestrictionEntry;->readArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->choices:[Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Landroid/content/RestrictionEntry;->readArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->values:[Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Landroid/content/RestrictionEntry;->readArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Landroid/content/RestrictionEntry;->type:I

    .line 4
    iput-object p2, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Landroid/content/RestrictionEntry;->type:I

    .line 8
    invoke-virtual {p0, p2}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    const/4 p1, 0x4

    .line 11
    iput p1, p0, Landroid/content/RestrictionEntry;->type:I

    .line 12
    iput-object p2, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    return-void
.end method

.method private equalArrays([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 3
    aget-object v1, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private readArray(Landroid/os/Parcel;)[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private writeArray(Landroid/os/Parcel;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 4
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/content/RestrictionEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Landroid/content/RestrictionEntry;

    .line 3
    iget v1, p0, Landroid/content/RestrictionEntry;->type:I

    iget v3, p1, Landroid/content/RestrictionEntry;->type:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object p1, p1, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Landroid/content/RestrictionEntry;->equalArrays([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    :goto_0
    return v0
.end method

.method public getAllSelectedStrings()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getChoiceEntries()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/RestrictionEntry;->choices:[Ljava/lang/String;

    return-object v0
.end method

.method public getChoiceValues()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/RestrictionEntry;->values:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/RestrictionEntry;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSelectedString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/RestrictionEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/RestrictionEntry;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 2
    iget-object v0, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public setAllSelectedStrings([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceEntries(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/RestrictionEntry;->choices:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceEntries([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/RestrictionEntry;->choices:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceValues(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/RestrictionEntry;->values:[Ljava/lang/String;

    return-void
.end method

.method public setChoiceValues([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/RestrictionEntry;->values:[Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/RestrictionEntry;->description:Ljava/lang/String;

    return-void
.end method

.method public setSelectedState(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    return-void
.end method

.method public setSelectedString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/RestrictionEntry;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/content/RestrictionEntry;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestrictionsEntry {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/RestrictionEntry;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/content/RestrictionEntry;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Landroid/content/RestrictionEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Landroid/content/RestrictionEntry;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Landroid/content/RestrictionEntry;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Landroid/content/RestrictionEntry;->choices:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/content/RestrictionEntry;->writeArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Landroid/content/RestrictionEntry;->values:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/content/RestrictionEntry;->writeArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Landroid/content/RestrictionEntry;->currentValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Landroid/content/RestrictionEntry;->currentValues:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/content/RestrictionEntry;->writeArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    return-void
.end method
