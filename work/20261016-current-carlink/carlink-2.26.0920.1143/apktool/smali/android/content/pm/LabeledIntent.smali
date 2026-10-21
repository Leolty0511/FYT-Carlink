.class public Landroid/content/pm/LabeledIntent;
.super Landroid/content/Intent;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/LabeledIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcon:I

.field private mLabelRes:I

.field private mNonLocalizedLabel:Ljava/lang/CharSequence;

.field private mSourcePackage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/LabeledIntent$1;

    invoke-direct {v0}, Landroid/content/pm/LabeledIntent$1;-><init>()V

    sput-object v0, Landroid/content/pm/LabeledIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 3
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 5
    iput p4, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 9
    iput-object p3, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 10
    iput p4, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/pm/LabeledIntent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 13
    iput p2, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 15
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 17
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 19
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 20
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    return-void
.end method


# virtual methods
.method public getIconResource()I
    .locals 1

    iget v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    return v0
.end method

.method public getLabelResource()I
    .locals 1

    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    return v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    return-object v1
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 15
    .line 16
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/CharSequence;

    .line 23
    .line 24
    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 31
    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 15
    .line 16
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
