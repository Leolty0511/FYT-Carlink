.class public Landroid/app/assist/AssistStructure$ViewNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# static fields
.field static final FLAGS_ACCESSIBILITY_FOCUSED:I = 0x1000

.field static final FLAGS_ACTIVATED:I = 0x2000

.field static final FLAGS_ALL_CONTROL:I = -0x100000

.field static final FLAGS_ASSIST_BLOCKED:I = 0x80

.field static final FLAGS_CHECKABLE:I = 0x100

.field static final FLAGS_CHECKED:I = 0x200

.field static final FLAGS_CLICKABLE:I = 0x400

.field static final FLAGS_CONTEXT_CLICKABLE:I = 0x4000

.field static final FLAGS_DISABLED:I = 0x1

.field static final FLAGS_FOCUSABLE:I = 0x10

.field static final FLAGS_FOCUSED:I = 0x20

.field static final FLAGS_HAS_ALPHA:I = 0x20000000

.field static final FLAGS_HAS_AUTOFILL_DATA:I = -0x80000000

.field static final FLAGS_HAS_CHILDREN:I = 0x100000

.field static final FLAGS_HAS_COMPLEX_TEXT:I = 0x800000

.field static final FLAGS_HAS_CONTENT_DESCRIPTION:I = 0x2000000

.field static final FLAGS_HAS_ELEVATION:I = 0x10000000

.field static final FLAGS_HAS_EXTRAS:I = 0x400000

.field static final FLAGS_HAS_ID:I = 0x200000

.field static final FLAGS_HAS_INPUT_TYPE:I = 0x40000

.field static final FLAGS_HAS_LARGE_COORDS:I = 0x4000000

.field static final FLAGS_HAS_LOCALE_LIST:I = 0x10000

.field static final FLAGS_HAS_MATRIX:I = 0x40000000

.field static final FLAGS_HAS_SCROLL:I = 0x8000000

.field static final FLAGS_HAS_TEXT:I = 0x1000000

.field static final FLAGS_HAS_URL:I = 0x80000

.field static final FLAGS_LONG_CLICKABLE:I = 0x800

.field static final FLAGS_OPAQUE:I = 0x8000

.field static final FLAGS_SELECTED:I = 0x40

.field static final FLAGS_VISIBILITY_MASK:I = 0xc

.field public static final TEXT_COLOR_UNDEFINED:I = 0x1

.field public static final TEXT_STYLE_BOLD:I = 0x1

.field public static final TEXT_STYLE_ITALIC:I = 0x2

.field public static final TEXT_STYLE_STRIKE_THRU:I = 0x8

.field public static final TEXT_STYLE_UNDERLINE:I = 0x4


# instance fields
.field mAlpha:F

.field mAutofillHints:[Ljava/lang/String;

.field mAutofillId:Landroid/view/autofill/AutofillId;

.field mAutofillOptions:[Ljava/lang/CharSequence;

.field mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

.field mAutofillType:I

.field mAutofillValue:Landroid/view/autofill/AutofillValue;

.field mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

.field mClassName:Ljava/lang/String;

.field mContentDescription:Ljava/lang/CharSequence;

.field mElevation:F

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mHeight:I

.field mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

.field mId:I

.field mIdEntry:Ljava/lang/String;

.field mIdPackage:Ljava/lang/String;

.field mIdType:Ljava/lang/String;

.field mInputType:I

.field mLocaleList:Landroid/os/LocaleList;

.field mMatrix:Landroid/graphics/Matrix;

.field mSanitized:Z

.field mScrollX:I

.field mScrollY:I

.field mText:Landroid/app/assist/AssistStructure$ViewNodeText;

.field mWebDomain:Ljava/lang/String;

.field mWidth:I

.field mX:I

.field mY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V
    .locals 7

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const v1, 0x22222222

    .line 9
    invoke-virtual {p1, v1, p2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v1

    .line 10
    iget v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    .line 11
    iget-object v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    .line 12
    invoke-virtual {v2}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    .line 13
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/high16 v5, 0x200000

    and-int/2addr v5, v4

    if-eqz v5, :cond_0

    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eqz v5, :cond_0

    .line 15
    invoke-virtual {v2}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 16
    invoke-virtual {v2}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    .line 17
    invoke-virtual {v2}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    :cond_0
    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    .line 19
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillValue;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    .line 24
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    .line 25
    instance-of v6, v2, Landroid/view/ViewStructure$HtmlInfo;

    if-eqz v6, :cond_2

    .line 26
    check-cast v2, Landroid/view/ViewStructure$HtmlInfo;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    :cond_2
    const/high16 v2, 0x4000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 28
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    and-int/lit16 v6, v2, 0x7fff

    .line 32
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0x7fff

    .line 33
    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    and-int/lit16 v6, v2, 0x7fff

    .line 35
    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0x7fff

    .line 36
    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    :goto_1
    const/high16 v2, 0x8000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    :cond_4
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    .line 39
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    .line 40
    iget-object v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 41
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setValues([F)V

    :cond_5
    const/high16 v2, 0x10000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_6

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    :cond_6
    const/high16 v2, 0x20000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_7

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    :cond_7
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_8

    .line 44
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    :cond_8
    const/high16 v2, 0x1000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_a

    .line 45
    new-instance v2, Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v6, 0x800000

    and-int/2addr v6, v4

    if-nez v6, :cond_9

    move v6, v3

    goto :goto_2

    :cond_9
    move v6, v0

    :goto_2
    invoke-direct {v2, v1, v6}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    :cond_a
    const/high16 v2, 0x40000

    and-int/2addr v2, v4

    if-eqz v2, :cond_b

    .line 46
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    :cond_b
    const/high16 v2, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_c

    .line 47
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    :cond_c
    const/high16 v2, 0x10000

    and-int/2addr v2, v4

    if-eqz v2, :cond_d

    .line 48
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/LocaleList;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    :cond_d
    const/high16 v2, 0x400000

    and-int/2addr v2, v4

    if-eqz v2, :cond_e

    .line 49
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    :cond_e
    const/high16 v2, 0x100000

    and-int/2addr v2, v4

    if-eqz v2, :cond_f

    .line 50
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    new-array v2, v1, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    :goto_3
    if-ge v0, v1, :cond_f

    .line 52
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v4, Landroid/app/assist/AssistStructure$ViewNode;

    add-int/lit8 v5, p2, 0x1

    invoke-direct {v4, p1, v5}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return v0
.end method

.method public getAutofillHints()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getAutofillOptions()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    return v0
.end method

.method public getIdEntry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getIdPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    return v0
.end method

.method public getLocaleList()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getScrollX()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextBackgroundColor()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getTextLineBaselines()[I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextLineCharOffsets()[I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTextSelectionStart()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTextStyle()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    return v0
.end method

.method public getTransformation()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getWebDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivated()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssistBlocked()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckable()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClickable()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContextClickable()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFocusable()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFocused()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpaque()Z
    .locals 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSanitized()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V
    .locals 0

    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    return-void
.end method

.method public updateAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[F)I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget v4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 10
    .line 11
    const v5, 0xfffff

    .line 12
    .line 13
    .line 14
    and-int/2addr v4, v5

    .line 15
    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 16
    .line 17
    const/4 v6, -0x1

    .line 18
    const/high16 v7, 0x200000

    .line 19
    .line 20
    if-eq v5, v6, :cond_0

    .line 21
    .line 22
    or-int/2addr v4, v7

    .line 23
    :cond_0
    iget-object v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 24
    .line 25
    const/high16 v6, -0x80000000

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    or-int/2addr v4, v6

    .line 30
    :cond_1
    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 31
    .line 32
    and-int/lit16 v5, v5, -0x8000

    .line 33
    .line 34
    const/high16 v8, 0x4000000

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    if-nez v5, :cond_4

    .line 38
    .line 39
    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 40
    .line 41
    and-int/lit16 v5, v5, -0x8000

    .line 42
    .line 43
    if-nez v5, :cond_4

    .line 44
    .line 45
    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 46
    .line 47
    and-int/lit16 v5, v5, -0x8000

    .line 48
    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v5, v9

    .line 54
    :goto_0
    iget v11, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    .line 55
    .line 56
    and-int/lit16 v11, v11, -0x8000

    .line 57
    .line 58
    if-eqz v11, :cond_3

    .line 59
    .line 60
    const/4 v11, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v11, v9

    .line 63
    :goto_1
    or-int/2addr v5, v11

    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    :cond_4
    or-int/2addr v4, v8

    .line 67
    :cond_5
    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    .line 68
    .line 69
    const/high16 v11, 0x8000000

    .line 70
    .line 71
    if-nez v5, :cond_6

    .line 72
    .line 73
    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    .line 74
    .line 75
    if-eqz v5, :cond_7

    .line 76
    .line 77
    :cond_6
    or-int/2addr v4, v11

    .line 78
    :cond_7
    iget-object v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    .line 79
    .line 80
    const/high16 v12, 0x40000000    # 2.0f

    .line 81
    .line 82
    if-eqz v5, :cond_8

    .line 83
    .line 84
    or-int/2addr v4, v12

    .line 85
    :cond_8
    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    .line 86
    .line 87
    const/4 v13, 0x0

    .line 88
    cmpl-float v5, v5, v13

    .line 89
    .line 90
    const/high16 v13, 0x10000000

    .line 91
    .line 92
    if-eqz v5, :cond_9

    .line 93
    .line 94
    or-int/2addr v4, v13

    .line 95
    :cond_9
    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 96
    .line 97
    const/high16 v14, 0x3f800000    # 1.0f

    .line 98
    .line 99
    cmpl-float v5, v5, v14

    .line 100
    .line 101
    const/high16 v14, 0x20000000

    .line 102
    .line 103
    if-eqz v5, :cond_a

    .line 104
    .line 105
    or-int/2addr v4, v14

    .line 106
    :cond_a
    iget-object v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    .line 107
    .line 108
    const/high16 v15, 0x2000000

    .line 109
    .line 110
    if-eqz v5, :cond_b

    .line 111
    .line 112
    or-int/2addr v4, v15

    .line 113
    :cond_b
    iget-object v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 114
    .line 115
    const/high16 v16, 0x800000

    .line 116
    .line 117
    const/high16 v17, 0x1000000

    .line 118
    .line 119
    if-eqz v5, :cond_c

    .line 120
    .line 121
    or-int v4, v4, v17

    .line 122
    .line 123
    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$ViewNodeText;->isSimple()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_c

    .line 128
    .line 129
    or-int v4, v4, v16

    .line 130
    .line 131
    :cond_c
    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    .line 132
    .line 133
    const/high16 v18, 0x40000

    .line 134
    .line 135
    if-eqz v5, :cond_d

    .line 136
    .line 137
    or-int v4, v4, v18

    .line 138
    .line 139
    :cond_d
    iget-object v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    .line 140
    .line 141
    const/high16 v19, 0x80000

    .line 142
    .line 143
    if-eqz v5, :cond_e

    .line 144
    .line 145
    or-int v4, v4, v19

    .line 146
    .line 147
    :cond_e
    iget-object v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    .line 148
    .line 149
    const/high16 v20, 0x10000

    .line 150
    .line 151
    if-eqz v5, :cond_f

    .line 152
    .line 153
    or-int v4, v4, v20

    .line 154
    .line 155
    :cond_f
    iget-object v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    .line 156
    .line 157
    const/high16 v21, 0x400000

    .line 158
    .line 159
    if-eqz v5, :cond_10

    .line 160
    .line 161
    or-int v4, v4, v21

    .line 162
    .line 163
    :cond_10
    iget-object v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    .line 164
    .line 165
    if-eqz v5, :cond_11

    .line 166
    .line 167
    const/high16 v5, 0x100000

    .line 168
    .line 169
    or-int/2addr v4, v5

    .line 170
    :cond_11
    iget-object v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v2, v5}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    and-int v5, v4, v6

    .line 176
    .line 177
    if-eqz v5, :cond_13

    .line 178
    .line 179
    iget-boolean v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    .line 180
    .line 181
    if-nez v6, :cond_12

    .line 182
    .line 183
    if-nez p3, :cond_13

    .line 184
    .line 185
    :cond_12
    and-int/lit16 v6, v4, -0x201

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_13
    move v6, v4

    .line 189
    :goto_2
    iget-object v10, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    .line 190
    .line 191
    if-eqz v10, :cond_15

    .line 192
    .line 193
    iget-boolean v10, v10, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    .line 194
    .line 195
    if-eqz v10, :cond_14

    .line 196
    .line 197
    or-int/lit8 v6, v6, 0x20

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_14
    and-int/lit8 v6, v6, -0x21

    .line 201
    .line 202
    :cond_15
    :goto_3
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    .line 204
    .line 205
    and-int v6, v4, v7

    .line 206
    .line 207
    if-eqz v6, :cond_16

    .line 208
    .line 209
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 210
    .line 211
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    .line 213
    .line 214
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 215
    .line 216
    if-eqz v6, :cond_16

    .line 217
    .line 218
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v2, v6}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    .line 224
    .line 225
    if-eqz v6, :cond_16

    .line 226
    .line 227
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v2, v6}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v2, v6}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_16
    if-eqz v5, :cond_1c

    .line 238
    .line 239
    iget-boolean v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    .line 240
    .line 241
    if-nez v2, :cond_18

    .line 242
    .line 243
    if-nez p3, :cond_17

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_17
    move v5, v9

    .line 247
    goto :goto_5

    .line 248
    :cond_18
    :goto_4
    const/4 v5, 0x1

    .line 249
    :goto_5
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    .line 251
    .line 252
    iget-object v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 253
    .line 254
    invoke-virtual {v1, v2, v9}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 255
    .line 256
    .line 257
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    .line 261
    .line 262
    iget-object v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const/4 v2, 0x0

    .line 268
    if-eqz v5, :cond_19

    .line 269
    .line 270
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_19
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    .line 274
    .line 275
    if-eqz v6, :cond_1a

    .line 276
    .line 277
    iget-object v6, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 278
    .line 279
    if-eqz v6, :cond_1a

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_1a
    move-object v6, v2

    .line 283
    :goto_6
    invoke-virtual {v1, v6, v9}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 284
    .line 285
    .line 286
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    .line 287
    .line 288
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 289
    .line 290
    .line 291
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    .line 292
    .line 293
    instance-of v7, v6, Landroid/os/Parcelable;

    .line 294
    .line 295
    if-eqz v7, :cond_1b

    .line 296
    .line 297
    check-cast v6, Landroid/os/Parcelable;

    .line 298
    .line 299
    invoke-virtual {v1, v6, v9}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 300
    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_1b
    invoke-virtual {v1, v2, v9}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 304
    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_1c
    const/4 v5, 0x1

    .line 308
    :goto_7
    and-int v2, v4, v8

    .line 309
    .line 310
    if-eqz v2, :cond_1d

    .line 311
    .line 312
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 313
    .line 314
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    .line 316
    .line 317
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 318
    .line 319
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    .line 321
    .line 322
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    .line 326
    .line 327
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    .line 328
    .line 329
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_1d
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 334
    .line 335
    shl-int/lit8 v2, v2, 0x10

    .line 336
    .line 337
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 338
    .line 339
    or-int/2addr v2, v6

    .line 340
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    .line 342
    .line 343
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    .line 344
    .line 345
    shl-int/lit8 v2, v2, 0x10

    .line 346
    .line 347
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 348
    .line 349
    or-int/2addr v2, v6

    .line 350
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    .line 352
    .line 353
    :goto_8
    and-int v2, v4, v11

    .line 354
    .line 355
    if-eqz v2, :cond_1e

    .line 356
    .line 357
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    .line 358
    .line 359
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    .line 361
    .line 362
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    .line 363
    .line 364
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    .line 366
    .line 367
    :cond_1e
    and-int v2, v4, v12

    .line 368
    .line 369
    if-eqz v2, :cond_1f

    .line 370
    .line 371
    iget-object v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    .line 372
    .line 373
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 377
    .line 378
    .line 379
    :cond_1f
    and-int v2, v4, v13

    .line 380
    .line 381
    if-eqz v2, :cond_20

    .line 382
    .line 383
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    .line 384
    .line 385
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 386
    .line 387
    .line 388
    :cond_20
    and-int v2, v4, v14

    .line 389
    .line 390
    if-eqz v2, :cond_21

    .line 391
    .line 392
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 393
    .line 394
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 395
    .line 396
    .line 397
    :cond_21
    and-int v2, v4, v15

    .line 398
    .line 399
    if-eqz v2, :cond_22

    .line 400
    .line 401
    iget-object v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    .line 402
    .line 403
    invoke-static {v2, v1, v9}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 404
    .line 405
    .line 406
    :cond_22
    and-int v2, v4, v17

    .line 407
    .line 408
    if-eqz v2, :cond_24

    .line 409
    .line 410
    iget-object v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 411
    .line 412
    and-int v3, v4, v16

    .line 413
    .line 414
    if-nez v3, :cond_23

    .line 415
    .line 416
    const/4 v10, 0x1

    .line 417
    goto :goto_9

    .line 418
    :cond_23
    move v10, v9

    .line 419
    :goto_9
    invoke-virtual {v2, v1, v10, v5}, Landroid/app/assist/AssistStructure$ViewNodeText;->writeToParcel(Landroid/os/Parcel;ZZ)V

    .line 420
    .line 421
    .line 422
    :cond_24
    and-int v2, v4, v18

    .line 423
    .line 424
    if-eqz v2, :cond_25

    .line 425
    .line 426
    iget v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    .line 427
    .line 428
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    .line 430
    .line 431
    :cond_25
    and-int v2, v4, v19

    .line 432
    .line 433
    if-eqz v2, :cond_26

    .line 434
    .line 435
    iget-object v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    :cond_26
    and-int v2, v4, v20

    .line 441
    .line 442
    if-eqz v2, :cond_27

    .line 443
    .line 444
    iget-object v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    .line 445
    .line 446
    invoke-virtual {v1, v2, v9}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 447
    .line 448
    .line 449
    :cond_27
    and-int v2, v4, v21

    .line 450
    .line 451
    if-eqz v2, :cond_28

    .line 452
    .line 453
    iget-object v2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 456
    .line 457
    .line 458
    :cond_28
    return v4
.end method
