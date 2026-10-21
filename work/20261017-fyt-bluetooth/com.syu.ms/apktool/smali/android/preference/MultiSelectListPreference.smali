.class public Landroid/preference/MultiSelectListPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 4
    sget-object v0, Li/a;->MultiSelectListPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$076(Landroid/preference/MultiSelectListPreference;I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    return p1
.end method

.method public static synthetic access$100(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object p0
.end method

.method private getSelectedItems()[Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 2
    array-length v1, v0

    .line 3
    iget-object v2, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 4
    new-array v3, v1, [Z

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 5
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 2
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method public onDialogClosed(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 4
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    array-length p2, p1

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 4
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 2
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/preference/MultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Landroid/preference/MultiSelectListPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/MultiSelectListPreference$1;-><init>(Landroid/preference/MultiSelectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 6
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Landroid/preference/MultiSelectListPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Landroid/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    return-object v1
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/util/Set;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    return-void
.end method

.method public setEntries(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistStringSet(Ljava/util/Set;)Z

    return-void
.end method
