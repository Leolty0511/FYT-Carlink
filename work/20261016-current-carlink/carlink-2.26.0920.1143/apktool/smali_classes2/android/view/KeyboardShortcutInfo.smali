.class public final Landroid/view/KeyboardShortcutInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseCharacter:C

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mKeycode:I

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mModifiers:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/KeyboardShortcutInfo$1;

    invoke-direct {v0}, Landroid/view/KeyboardShortcutInfo$1;-><init>()V

    sput-object v0, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;CI)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 13
    iput-char p2, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 14
    iput p1, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 15
    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 p1, 0x0

    .line 5
    iput-char p1, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    if-ltz p3, :cond_0

    .line 6
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result p2

    if-gt p3, p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 7
    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 8
    iput p4, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBaseCharacter()C
    .locals 1

    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getKeycode()I
    .locals 1

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    .line 11
    .line 12
    iget-char p2, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    iget p2, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    iget p2, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
