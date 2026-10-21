.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$AutoSizeTextType;,
        Landroid/widget/TextView$Drawables;
    }
.end annotation


# static fields
.field static final ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID:I = 0x10000100

.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field static final DEBUG_AUTOFILL:Z = false

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX:I = 0x1

.field private static final DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP:I = 0x70

.field private static final DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP:I = 0xc

.field private static final DEVICE_PROVISIONED_NO:I = 0x1

.field private static final DEVICE_PROVISIONED_UNKNOWN:I = 0x0

.field private static final DEVICE_PROVISIONED_YES:I = 0x2

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field private static final FLOATING_TOOLBAR_SELECT_ALL_REFRESH_DELAY:I = 0x1f4

.field static final ID_ASSIST:I = 0x1020041

.field static final ID_AUTOFILL:I = 0x1020043

.field static final ID_COPY:I = 0x1020021

.field static final ID_CUT:I = 0x1020020

.field static final ID_PASTE:I = 0x1020022

.field static final ID_PASTE_AS_PLAIN_TEXT:I = 0x1020031

.field static final ID_REDO:I = 0x1020033

.field static final ID_REPLACE:I = 0x1020034

.field static final ID_SELECT_ALL:I = 0x102001f

.field static final ID_SHARE:I = 0x1020035

.field static final ID_UNDO:I = 0x1020032

.field private static final KEY_DOWN_HANDLED_BY_KEY_LISTENER:I = 0x1

.field private static final KEY_DOWN_HANDLED_BY_MOVEMENT_METHOD:I = 0x2

.field private static final KEY_EVENT_HANDLED:I = -0x1

.field private static final KEY_EVENT_NOT_HANDLED:I = 0x0

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field static final PROCESS_TEXT_REQUEST_CODE:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field private static final TEMP_POSITION:[F

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field private static final UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE:F = -1.0f

.field static final VERY_WIDE:I = 0x100000

.field static sLastCutCopyOrTextChangedTime:J


# instance fields
.field private mAllowTransformationLengthChange:Z

.field private mAutoLinkMask:I

.field private mAutoSizeMaxTextSizeInPx:F

.field private mAutoSizeMinTextSizeInPx:F

.field private mAutoSizeStepGranularityInPx:F

.field private mAutoSizeTextSizesInPx:[I

.field private mAutoSizeTextType:I

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBreakStrategy:I

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCurHintTextColor:I

.field private mCurTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDeviceProvisionedState:I

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mHasPresetAutoSizeValues:Z

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mJustificationMode:I

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListenerChanged:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalesChanged:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mNeedsAutoSizeText:Z

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mPreDrawListenerDetached:Z

.field private mPreDrawRegistered:Z

.field private mPreventDefaultMovement:Z

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditSuggestionContainerLayout:I

.field mTextEditSuggestionHighlightStyle:I

.field mTextEditSuggestionItemLayout:I

.field private mTextFromResource:Z

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private final mUseInternationalizedInput:Z

.field private mUserSetTextScaleX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    sput-object v0, Landroid/widget/TextView;->TEMP_POSITION:[F

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v1, v0, [Landroid/text/InputFilter;

    .line 15
    .line 16
    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 17
    .line 18
    new-instance v1, Landroid/text/SpannedString;

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    new-array v1, v1, [I

    .line 29
    .line 30
    const v2, 0x101034d

    .line 31
    .line 32
    .line 33
    aput v2, v1, v0

    .line 34
    .line 35
    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    .line 36
    .line 37
    new-instance v0, Landroid/text/BoringLayout$Metrics;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 57

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const-string v6, "Failure reading input extras"

    const-string v7, "TextView"

    .line 4
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 6
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    const/4 v8, 0x3

    .line 7
    iput v8, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    const/4 v9, -0x1

    .line 8
    iput v9, v1, Landroid/widget/TextView;->mLastLayoutDirection:I

    const/4 v10, 0x0

    .line 9
    iput v10, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 10
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 11
    iput-boolean v10, v1, Landroid/widget/TextView;->mLocalesChanged:Z

    .line 12
    iput-boolean v10, v1, Landroid/widget/TextView;->mListenerChanged:Z

    const v0, 0x800033

    .line 13
    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    const/4 v11, 0x1

    .line 14
    iput-boolean v11, v1, Landroid/widget/TextView;->mLinksClickable:Z

    const/high16 v12, 0x3f800000    # 1.0f

    .line 15
    iput v12, v1, Landroid/widget/TextView;->mSpacingMult:F

    const/4 v13, 0x0

    .line 16
    iput v13, v1, Landroid/widget/TextView;->mSpacingAdd:F

    const v0, 0x7fffffff

    .line 17
    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 18
    iput v11, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 19
    iput v10, v1, Landroid/widget/TextView;->mMinimum:I

    .line 20
    iput v11, v1, Landroid/widget/TextView;->mMinMode:I

    .line 21
    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    .line 22
    iput v11, v1, Landroid/widget/TextView;->mOldMaxMode:I

    .line 23
    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v14, 0x2

    .line 24
    iput v14, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 25
    iput v10, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 26
    iput v14, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 27
    iput v9, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 28
    iput-boolean v11, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 29
    iput v9, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 30
    sget-object v0, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    const v0, 0x6633b5e5

    .line 31
    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 32
    iput-boolean v11, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 33
    iput v10, v1, Landroid/widget/TextView;->mDeviceProvisionedState:I

    .line 34
    iput v10, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    .line 35
    iput-boolean v10, v1, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    const/high16 v15, -0x40800000    # -1.0f

    .line 36
    iput v15, v1, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    .line 37
    iput v15, v1, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    .line 38
    iput v15, v1, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    .line 39
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v1, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 40
    iput-boolean v10, v1, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    .line 41
    iput-boolean v10, v1, Landroid/widget/TextView;->mTextFromResource:Z

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAutofill()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {v1, v11}, Landroid/view/View;->setImportantForAutofill(I)V

    :cond_0
    const-string v0, ""

    .line 44
    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 46
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v14

    .line 47
    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8, v11}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v8, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 48
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    iput v12, v8, Landroid/text/TextPaint;->density:F

    .line 49
    iget v12, v14, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 50
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 51
    iget v12, v14, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v8

    iput-object v8, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    const/4 v8, 0x0

    .line 53
    iput-object v8, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 54
    iput v10, v1, Landroid/widget/TextView;->mBreakStrategy:I

    .line 55
    iput v10, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 56
    iput v10, v1, Landroid/widget/TextView;->mJustificationMode:I

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    .line 58
    sget-object v14, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    invoke-virtual {v12, v3, v14, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 59
    invoke-virtual {v14, v10, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 60
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v8, v9, :cond_1

    .line 61
    sget-object v14, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v12, v8, v14}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_5

    .line 62
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    move/from16 v23, v9

    move/from16 v24, v23

    move v9, v10

    move v15, v9

    move/from16 v25, v15

    move/from16 v26, v25

    move/from16 v28, v26

    move/from16 v27, v13

    move/from16 v29, v27

    move/from16 v30, v29

    move/from16 v31, v30

    const/16 v11, 0xf

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_1
    if-ge v15, v14, :cond_4

    .line 63
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_2

    .line 64
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v21, v10

    goto/16 :goto_2

    .line 65
    :pswitch_1
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    goto/16 :goto_2

    :pswitch_2
    const/4 v13, 0x0

    .line 66
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    goto/16 :goto_2

    .line 67
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 68
    :try_start_0
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    if-nez v17, :cond_3

    .line 69
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v22, v10

    goto :goto_2

    :pswitch_4
    const/4 v13, 0x0

    .line 70
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    goto :goto_2

    .line 71
    :pswitch_5
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    goto :goto_2

    .line 72
    :pswitch_6
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v30

    goto :goto_2

    .line 73
    :pswitch_7
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    goto :goto_2

    :pswitch_8
    const/4 v13, 0x0

    .line 74
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    goto :goto_2

    .line 75
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object/from16 v20, v10

    goto :goto_2

    .line 76
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object/from16 v19, v10

    goto :goto_2

    .line 77
    :pswitch_b
    invoke-virtual {v8, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    goto :goto_2

    .line 78
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object/from16 v18, v10

    goto :goto_2

    :pswitch_d
    const/4 v13, -0x1

    .line 79
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    goto :goto_2

    :pswitch_e
    const/4 v13, -0x1

    .line 80
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    goto :goto_2

    .line 81
    :pswitch_f
    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto/16 :goto_1

    .line 82
    :cond_4
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move v14, v11

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    const/16 v14, 0xf

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 83
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v8

    .line 84
    sget-object v10, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {v12, v3, v10, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 85
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v11

    move/from16 v39, v9

    move/from16 v38, v24

    move/from16 v32, v26

    move/from16 v33, v27

    move/from16 v34, v28

    move/from16 v35, v29

    move/from16 v36, v30

    move/from16 v37, v31

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v29, 0x0

    const/16 v40, -0x1

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/high16 v52, -0x40800000    # -1.0f

    const/high16 v53, -0x40800000    # -1.0f

    const/high16 v54, -0x40800000    # -1.0f

    move v9, v8

    move/from16 v30, v14

    move-object/from16 v28, v19

    move-object/from16 v26, v20

    move-object/from16 v24, v22

    move/from16 v31, v23

    move/from16 v27, v25

    const/4 v8, 0x0

    const/4 v14, -0x1

    const/16 v19, 0x0

    const/16 v22, -0x1

    move-object/from16 v23, v17

    move-object/from16 v20, v18

    move-object/from16 v25, v21

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v21, v0

    :goto_4
    if-ge v8, v11, :cond_b

    .line 86
    invoke-virtual {v10, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_10
    move/from16 v56, v8

    move/from16 v55, v11

    :cond_6
    :goto_5
    move/from16 v11, v41

    move/from16 v8, v43

    :goto_6
    move/from16 v41, v3

    :goto_7
    move/from16 v3, v40

    move-object/from16 v40, v6

    move/from16 v6, v39

    move-object/from16 v39, v7

    goto/16 :goto_11

    :pswitch_11
    move/from16 v55, v11

    const/4 v11, 0x0

    .line 87
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionHighlightStyle:I

    goto :goto_9

    :pswitch_12
    move/from16 v55, v11

    const/4 v11, 0x0

    .line 88
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionContainerLayout:I

    goto :goto_9

    :pswitch_13
    move/from16 v55, v11

    const/4 v11, 0x0

    .line 89
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mJustificationMode:I

    goto :goto_9

    :pswitch_14
    move/from16 v55, v11

    const/high16 v11, -0x40800000    # -1.0f

    .line 90
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v53

    goto :goto_8

    :pswitch_15
    move/from16 v55, v11

    const/high16 v11, -0x40800000    # -1.0f

    .line 91
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v52

    goto :goto_8

    :pswitch_16
    move/from16 v55, v11

    const/4 v11, 0x0

    .line 92
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_7

    .line 93
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 94
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    invoke-direct {v1, v0}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_9

    :pswitch_17
    move/from16 v55, v11

    const/high16 v11, -0x40800000    # -1.0f

    .line 97
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v54

    :goto_8
    move/from16 v56, v8

    goto/16 :goto_b

    :pswitch_18
    move/from16 v55, v11

    const/4 v11, 0x0

    .line 98
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    :cond_7
    :goto_9
    move/from16 v56, v8

    goto :goto_5

    :pswitch_19
    move/from16 v55, v11

    const/4 v11, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 100
    iget-object v11, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v56, v8

    const/4 v8, 0x1

    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v11, Landroid/widget/Editor;->mAllowUndo:Z

    goto/16 :goto_5

    :pswitch_1a
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 101
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    goto/16 :goto_5

    :pswitch_1b
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 102
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    goto/16 :goto_5

    :pswitch_1c
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, -0x1

    .line 103
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0, v5}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_b

    :pswitch_1d
    move/from16 v56, v8

    move/from16 v55, v11

    .line 104
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object/from16 v50, v0

    goto/16 :goto_b

    :pswitch_1e
    move/from16 v56, v8

    move/from16 v55, v11

    .line 105
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    goto/16 :goto_b

    :pswitch_1f
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 106
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move/from16 v33, v0

    goto/16 :goto_b

    :pswitch_20
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 107
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v32, v0

    goto/16 :goto_b

    :pswitch_21
    move/from16 v56, v8

    move/from16 v55, v11

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 109
    :try_start_1
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v8

    :catch_1
    :cond_8
    if-nez v23, :cond_9

    .line 110
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    :cond_9
    move/from16 v0, v40

    const/16 v42, 0x1

    goto/16 :goto_c

    :pswitch_22
    move/from16 v56, v8

    move/from16 v55, v11

    .line 111
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v49, v0

    goto/16 :goto_b

    :pswitch_23
    move/from16 v56, v8

    move/from16 v55, v11

    .line 112
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v48, v0

    goto/16 :goto_b

    :pswitch_24
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 113
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v27, v0

    goto/16 :goto_b

    :pswitch_25
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 114
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_5

    :pswitch_26
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 115
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_5

    :pswitch_27
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 116
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto/16 :goto_5

    :pswitch_28
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 117
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_5

    :pswitch_29
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 118
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_5

    :pswitch_2a
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 119
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_5

    :pswitch_2b
    move/from16 v56, v8

    move/from16 v55, v11

    .line 120
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 121
    iget-object v8, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v8}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 122
    iget-object v8, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v11, v8, Landroid/widget/Editor$InputContentType;->imeActionId:I

    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto/16 :goto_5

    :pswitch_2c
    move/from16 v56, v8

    move/from16 v55, v11

    .line 123
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 124
    iget-object v8, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v8}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 125
    iget-object v8, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :pswitch_2d
    move/from16 v56, v8

    move/from16 v55, v11

    .line 126
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 127
    iget-object v8, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v8}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 128
    iget-object v8, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v11, v8, Landroid/widget/Editor$InputContentType;->imeOptions:I

    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto/16 :goto_5

    :pswitch_2e
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 129
    :try_start_2
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v0

    .line 130
    invoke-static {v7, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_3
    move-exception v0

    .line 131
    invoke-static {v7, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :pswitch_2f
    move/from16 v56, v8

    move/from16 v55, v11

    .line 132
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_30
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 133
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v29, v0

    goto/16 :goto_b

    :pswitch_31
    move/from16 v56, v8

    move/from16 v55, v11

    .line 134
    iget v8, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_5

    :pswitch_32
    move/from16 v56, v8

    move/from16 v55, v11

    .line 135
    iget v8, v1, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_5

    :pswitch_33
    move/from16 v56, v8

    move/from16 v55, v11

    .line 136
    iget v8, v1, Landroid/widget/TextView;->mSpacingAdd:F

    float-to-int v8, v8

    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_5

    :pswitch_34
    move/from16 v56, v8

    move/from16 v55, v11

    .line 137
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move v2, v0

    goto/16 :goto_b

    :pswitch_35
    move/from16 v56, v8

    move/from16 v55, v11

    .line 138
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v46, v0

    goto/16 :goto_b

    :pswitch_36
    move/from16 v56, v8

    move/from16 v55, v11

    .line 139
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v44, v0

    goto/16 :goto_b

    :pswitch_37
    move/from16 v56, v8

    move/from16 v55, v11

    .line 140
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v47, v0

    goto/16 :goto_b

    :pswitch_38
    move/from16 v56, v8

    move/from16 v55, v11

    .line 141
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v45, v0

    goto/16 :goto_b

    :pswitch_39
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 142
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_5

    :pswitch_3a
    move/from16 v56, v8

    move/from16 v55, v11

    .line 143
    invoke-virtual {v10, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v9, v0

    goto/16 :goto_b

    :pswitch_3b
    move/from16 v56, v8

    move/from16 v55, v11

    .line 144
    invoke-virtual {v10, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v13, v0

    goto/16 :goto_b

    :pswitch_3c
    move/from16 v56, v8

    move/from16 v55, v11

    .line 145
    invoke-virtual {v10, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v14, v0

    goto/16 :goto_b

    :pswitch_3d
    move/from16 v56, v8

    move/from16 v55, v11

    .line 146
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v18, v0

    goto/16 :goto_b

    :pswitch_3e
    move/from16 v56, v8

    move/from16 v55, v11

    .line 147
    invoke-virtual {v10, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v12, v0

    goto/16 :goto_b

    :pswitch_3f
    move/from16 v56, v8

    move/from16 v55, v11

    .line 148
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v19, v0

    goto/16 :goto_b

    :pswitch_40
    move/from16 v56, v8

    move/from16 v55, v11

    .line 149
    invoke-virtual {v10, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v15, v0

    goto/16 :goto_b

    :pswitch_41
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 150
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move/from16 v37, v0

    goto/16 :goto_b

    :pswitch_42
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 151
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move/from16 v36, v0

    goto/16 :goto_b

    :pswitch_43
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    .line 152
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move/from16 v35, v0

    goto/16 :goto_b

    :pswitch_44
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 153
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v34, v0

    goto/16 :goto_b

    :pswitch_45
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, -0x1

    const/4 v11, 0x0

    .line 154
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v22, v0

    goto/16 :goto_b

    :pswitch_46
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 155
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 156
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_5

    :pswitch_47
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v11, 0x0

    .line 157
    invoke-virtual {v10, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v4, v0

    goto/16 :goto_b

    :pswitch_48
    move/from16 v56, v8

    move/from16 v55, v11

    const/4 v11, 0x0

    .line 158
    invoke-virtual {v10, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v3, v0

    goto/16 :goto_b

    :pswitch_49
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/4 v11, 0x0

    .line 159
    invoke-virtual {v10, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v43, v0

    goto/16 :goto_b

    :pswitch_4a
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/4 v11, 0x0

    .line 160
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v11, 0x1

    .line 161
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_a

    :pswitch_4b
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/4 v11, -0x1

    .line 162
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_a

    :pswitch_4c
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/4 v11, -0x1

    .line 163
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_a

    :pswitch_4d
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/4 v11, -0x1

    .line 164
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_a

    :pswitch_4e
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/4 v11, -0x1

    .line 165
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxEms(I)V

    goto :goto_a

    :pswitch_4f
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/4 v11, -0x1

    .line 166
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinLines(I)V

    goto :goto_a

    :pswitch_50
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/4 v11, -0x1

    .line 167
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    goto :goto_a

    :pswitch_51
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/4 v11, -0x1

    .line 168
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_a

    :pswitch_52
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/4 v11, -0x1

    .line 169
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_a

    :pswitch_53
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/4 v11, 0x1

    .line 170
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v11, 0x0

    .line 171
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_a

    :pswitch_54
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/high16 v11, 0x3f800000    # 1.0f

    .line 172
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_a
    :goto_a
    move/from16 v11, v41

    goto/16 :goto_6

    :pswitch_55
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/high16 v11, 0x3f800000    # 1.0f

    .line 173
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v51, v0

    goto :goto_b

    :pswitch_56
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v8, v43

    const/high16 v11, 0x3f800000    # 1.0f

    .line 174
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v21, v0

    move/from16 v0, v40

    const/16 v17, 0x1

    goto :goto_c

    :pswitch_57
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    .line 175
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v41, v0

    :goto_b
    move/from16 v0, v40

    :goto_c
    move-object/from16 v40, v6

    move/from16 v6, v39

    move-object/from16 v39, v7

    goto/16 :goto_14

    :pswitch_58
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    const/4 v3, -0x1

    .line 176
    invoke-virtual {v10, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_7

    :pswitch_59
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    const/4 v3, -0x1

    .line 177
    invoke-virtual {v10, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_7

    :pswitch_5a
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    const/4 v3, -0x1

    .line 178
    invoke-virtual {v10, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_7

    :pswitch_5b
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    const/4 v3, -0x1

    .line 179
    invoke-virtual {v10, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_7

    :pswitch_5c
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    const/4 v3, 0x1

    .line 180
    invoke-virtual {v10, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto/16 :goto_7

    :pswitch_5d
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    const/4 v3, 0x0

    .line 181
    invoke-virtual {v10, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto/16 :goto_7

    :pswitch_5e
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    const/4 v3, -0x1

    .line 182
    invoke-virtual {v10, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    :pswitch_5f
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    move/from16 v3, v40

    .line 183
    invoke-virtual {v10, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    goto :goto_e

    :pswitch_60
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    move/from16 v3, v40

    .line 184
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_d

    :pswitch_61
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    move/from16 v3, v40

    .line 185
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object/from16 v28, v0

    :goto_d
    move v0, v3

    :goto_e
    move-object/from16 v40, v6

    move/from16 v6, v39

    move/from16 v3, v41

    move-object/from16 v39, v7

    goto/16 :goto_13

    :pswitch_62
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    move/from16 v3, v40

    move-object/from16 v40, v6

    move/from16 v6, v39

    .line 186
    invoke-virtual {v10, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    move v6, v0

    goto :goto_f

    :pswitch_63
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    move/from16 v3, v40

    move-object/from16 v40, v6

    move/from16 v6, v39

    .line 187
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object/from16 v20, v0

    :goto_f
    move v0, v3

    move-object/from16 v39, v7

    goto/16 :goto_12

    :pswitch_64
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    move/from16 v3, v40

    move-object/from16 v40, v6

    move/from16 v6, v39

    move-object/from16 v39, v7

    move/from16 v7, v38

    .line 188
    invoke-virtual {v10, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v38, v0

    goto :goto_10

    :pswitch_65
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    move/from16 v3, v40

    move-object/from16 v40, v6

    move/from16 v6, v39

    move-object/from16 v39, v7

    move/from16 v7, v31

    .line 189
    invoke-virtual {v10, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v31, v0

    goto :goto_10

    :pswitch_66
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    move/from16 v3, v40

    move-object/from16 v40, v6

    move/from16 v6, v39

    move-object/from16 v39, v7

    move/from16 v7, v30

    .line 190
    invoke-virtual {v10, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move/from16 v30, v0

    :goto_10
    move v0, v3

    goto :goto_12

    :pswitch_67
    move/from16 v56, v8

    move/from16 v55, v11

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    move/from16 v3, v40

    move-object/from16 v40, v6

    move/from16 v6, v39

    move-object/from16 v39, v7

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    invoke-virtual {v10, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_11
    move v0, v3

    move/from16 v43, v8

    :goto_12
    move/from16 v3, v41

    :goto_13
    move/from16 v41, v11

    :goto_14
    add-int/lit8 v8, v56, 0x1

    move-object/from16 v7, v39

    move/from16 v11, v55

    move/from16 v39, v6

    move-object/from16 v6, v40

    move/from16 v40, v0

    goto/16 :goto_4

    :cond_b
    move/from16 v6, v39

    move/from16 v11, v41

    move/from16 v8, v43

    move/from16 v41, v3

    move/from16 v3, v40

    .line 192
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move/from16 v7, v29

    and-int/lit16 v10, v7, 0xfff

    move-object/from16 v29, v0

    const/16 v0, 0x81

    if-ne v10, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_15

    :cond_c
    const/4 v0, 0x0

    :goto_15
    const/16 v6, 0xe1

    move/from16 v40, v3

    if-ne v10, v6, :cond_d

    const/4 v6, 0x1

    goto :goto_16

    :cond_d
    const/4 v6, 0x0

    :goto_16
    const/16 v3, 0x12

    if-ne v10, v3, :cond_e

    const/4 v10, 0x1

    goto :goto_17

    :cond_e
    const/4 v10, 0x0

    .line 194
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v55, v2

    const/16 v2, 0x1a

    if-lt v3, v2, :cond_f

    const/4 v2, 0x1

    goto :goto_18

    :cond_f
    const/4 v2, 0x0

    :goto_18
    iput-boolean v2, v1, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    const/4 v2, 0x4

    if-eqz v18, :cond_11

    .line 195
    :try_start_3
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    .line 196
    :try_start_4
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 197
    iget-object v9, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/method/KeyListener;

    iput-object v3, v9, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5

    .line 198
    :try_start_5
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_10

    goto :goto_19

    :cond_10
    iget-object v7, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 199
    invoke-interface {v7}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v7

    :goto_19
    iput v7, v3, Landroid/widget/Editor;->mInputType:I
    :try_end_5
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1b

    .line 200
    :catch_4
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v7, 0x1

    iput v7, v3, Landroid/widget/Editor;->mInputType:I

    goto :goto_1b

    :catch_5
    move-exception v0

    .line 201
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_6
    move-exception v0

    .line 202
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    move-exception v0

    .line 203
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_11
    if-eqz v19, :cond_13

    .line 204
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 205
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v9

    iput-object v9, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 206
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_12

    goto :goto_1a

    :cond_12
    const/4 v7, 0x1

    :goto_1a
    iput v7, v3, Landroid/widget/Editor;->mInputType:I

    goto :goto_1b

    :cond_13
    if-eqz v7, :cond_14

    const/4 v3, 0x1

    .line 207
    invoke-direct {v1, v7, v3}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 208
    invoke-static {v7}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v7

    xor-int/2addr v7, v3

    move v3, v7

    move-object/from16 v11, v29

    const/4 v7, 0x0

    goto/16 :goto_22

    :cond_14
    if-eqz v12, :cond_15

    .line 209
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 210
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v7

    iput-object v7, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 211
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v7, 0x3

    iput v7, v3, Landroid/widget/Editor;->mInputType:I

    :goto_1b
    const/4 v7, 0x0

    goto/16 :goto_20

    :cond_15
    if-eqz v15, :cond_18

    .line 212
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 213
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    and-int/lit8 v7, v15, 0x2

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    goto :goto_1c

    :cond_16
    const/4 v7, 0x0

    :goto_1c
    and-int/lit8 v9, v15, 0x4

    if-eqz v9, :cond_17

    const/4 v9, 0x1

    goto :goto_1d

    :cond_17
    const/4 v9, 0x0

    :goto_1d
    const/4 v11, 0x0

    invoke-static {v11, v7, v9}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    iput-object v7, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 214
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v3

    .line 215
    iget-object v7, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput v3, v7, Landroid/widget/Editor;->mInputType:I

    goto :goto_1b

    :cond_18
    if-nez v13, :cond_20

    const/4 v3, -0x1

    if-eq v14, v3, :cond_19

    goto :goto_1e

    :cond_19
    if-eqz v9, :cond_1a

    .line 216
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 217
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v7

    iput-object v7, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 218
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v7, 0x1

    iput v7, v3, Landroid/widget/Editor;->mInputType:I

    goto :goto_1b

    .line 219
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 220
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v7, 0x0

    if-eqz v3, :cond_1b

    .line 221
    iput-object v7, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/4 v9, 0x0

    .line 222
    iput v9, v3, Landroid/widget/Editor;->mInputType:I

    .line 223
    :cond_1b
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 224
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object v11, v3

    goto :goto_21

    :cond_1c
    const/4 v7, 0x0

    .line 225
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1d

    iput-object v7, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :cond_1d
    if-eqz v11, :cond_1f

    const/4 v3, 0x1

    if-eq v11, v3, :cond_1e

    const/4 v9, 0x2

    goto :goto_20

    :cond_1e
    const/4 v9, 0x2

    .line 226
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_21

    :cond_1f
    const/4 v3, 0x1

    const/4 v9, 0x2

    .line 227
    sget-object v11, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_21

    :cond_20
    :goto_1e
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x2

    if-eq v14, v3, :cond_23

    if-eq v14, v9, :cond_22

    const/4 v3, 0x3

    if-eq v14, v3, :cond_21

    .line 228
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v9, 0x1

    goto :goto_1f

    .line 229
    :cond_21
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    const/16 v9, 0x1001

    goto :goto_1f

    .line 230
    :cond_22
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    const/16 v9, 0x2001

    goto :goto_1f

    .line 231
    :cond_23
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    const/16 v9, 0x4001

    .line 232
    :goto_1f
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 233
    iget-object v11, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {v13, v3}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    iput-object v3, v11, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 234
    iget-object v3, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput v9, v3, Landroid/widget/Editor;->mInputType:I

    :goto_20
    move-object/from16 v11, v29

    :goto_21
    move/from16 v3, v41

    .line 235
    :goto_22
    iget-object v9, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v9, :cond_24

    .line 236
    invoke-virtual {v9, v8, v0, v6, v10}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    :cond_24
    if-eqz v4, :cond_25

    .line 237
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 238
    iget-object v4, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 239
    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    if-ne v11, v4, :cond_25

    .line 240
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :cond_25
    move-object/from16 v4, v50

    if-nez v4, :cond_28

    if-eqz v5, :cond_26

    goto :goto_24

    :cond_26
    move-object/from16 v12, p1

    :cond_27
    :goto_23
    move-object/from16 v4, v44

    move-object/from16 v5, v45

    move-object/from16 v9, v46

    move-object/from16 v13, v47

    goto :goto_27

    .line 241
    :cond_28
    :goto_24
    iget-object v9, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v9, :cond_29

    .line 242
    new-instance v9, Landroid/widget/TextView$Drawables;

    move-object/from16 v12, p1

    invoke-direct {v9, v12}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    goto :goto_25

    :cond_29
    move-object/from16 v12, p1

    :goto_25
    if-eqz v4, :cond_2a

    .line 243
    iget-object v9, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object v4, v9, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v4, 0x1

    .line 244
    iput-boolean v4, v9, Landroid/widget/TextView$Drawables;->mHasTint:Z

    goto :goto_26

    :cond_2a
    const/4 v4, 0x1

    :goto_26
    if-eqz v5, :cond_27

    .line 245
    iget-object v9, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object v5, v9, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 246
    iput-boolean v4, v9, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    goto :goto_23

    .line 247
    :goto_27
    invoke-virtual {v1, v4, v5, v9, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v4, v48

    move-object/from16 v5, v49

    .line 248
    invoke-direct {v1, v4, v5}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move/from16 v4, v55

    .line 249
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 250
    invoke-direct {v1, v3}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 251
    invoke-direct {v1, v3, v3, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    if-eqz v3, :cond_2b

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-nez v3, :cond_2b

    if-gez v40, :cond_2b

    const/4 v13, 0x3

    goto :goto_28

    :cond_2b
    move/from16 v13, v40

    :goto_28
    const/4 v3, 0x1

    if-eq v13, v3, :cond_30

    const/4 v4, 0x2

    if-eq v13, v4, :cond_2f

    const/4 v4, 0x3

    if-eq v13, v4, :cond_2e

    if-eq v13, v2, :cond_2c

    goto :goto_2a

    .line 253
    :cond_2c
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 254
    invoke-virtual {v1, v3}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v2, 0x0

    .line 255
    iput v2, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_29

    :cond_2d
    const/4 v2, 0x0

    .line 256
    invoke-virtual {v1, v2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 257
    iput v3, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 258
    :goto_29
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2a

    .line 259
    :cond_2e
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2a

    :cond_2f
    const/4 v4, 0x3

    .line 260
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2a

    :cond_30
    const/4 v4, 0x3

    .line 261
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_2a
    if-eqz v20, :cond_31

    goto :goto_2b

    :cond_31
    const/high16 v2, -0x1000000

    .line 262
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    :goto_2b
    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v2, v28

    .line 263
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v2, v26

    .line 264
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz v39, :cond_32

    move/from16 v9, v39

    .line 265
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_32
    move/from16 v14, v30

    int-to-float v2, v14

    const/4 v3, 0x1

    .line 266
    invoke-direct {v1, v2, v3}, Landroid/widget/TextView;->setRawTextSize(FZ)V

    move/from16 v2, v32

    .line 267
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    move/from16 v2, v33

    .line 268
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    move-object/from16 v2, v25

    .line 269
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    if-eqz v27, :cond_33

    .line 270
    new-instance v2, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_33
    if-nez v8, :cond_36

    if-nez v0, :cond_36

    if-nez v6, :cond_36

    if-eqz v10, :cond_34

    goto :goto_2c

    .line 271
    :cond_34
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_35

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, 0xfff

    const/16 v2, 0x81

    if-ne v0, v2, :cond_35

    goto :goto_2d

    :cond_35
    move/from16 v8, v31

    goto :goto_2e

    .line 272
    :cond_36
    :goto_2c
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_2d
    move v8, v4

    :goto_2e
    const/4 v2, -0x1

    if-eq v8, v2, :cond_37

    if-nez v42, :cond_37

    move-object/from16 v3, v23

    goto :goto_2f

    :cond_37
    move-object/from16 v3, v23

    move-object/from16 v7, v24

    :goto_2f
    move/from16 v2, v38

    .line 273
    invoke-direct {v1, v3, v7, v8, v2}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;II)V

    move/from16 v2, v34

    if-eqz v2, :cond_38

    move/from16 v3, v35

    move/from16 v4, v36

    move/from16 v5, v37

    .line 274
    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_38
    if-ltz v22, :cond_39

    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    .line 275
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    move/from16 v4, v22

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_30

    :cond_39
    const/4 v2, 0x1

    .line 276
    sget-object v0, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_30
    move-object/from16 v3, v21

    .line 277
    invoke-virtual {v1, v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-eqz v17, :cond_3a

    .line 278
    iput-boolean v2, v1, Landroid/widget/TextView;->mTextFromResource:Z

    :cond_3a
    move-object/from16 v2, v51

    if-eqz v2, :cond_3b

    .line 279
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 280
    :cond_3b
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v12, v2, v0, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 281
    iget-object v2, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_3d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-eqz v2, :cond_3c

    goto :goto_31

    :cond_3c
    const/4 v13, 0x0

    goto :goto_32

    :cond_3d
    :goto_31
    const/4 v13, 0x1

    :goto_32
    if-nez v13, :cond_3f

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_33

    :cond_3e
    const/4 v2, 0x0

    goto :goto_34

    :cond_3f
    :goto_33
    const/4 v2, 0x1

    :goto_34
    if-nez v13, :cond_41

    .line 283
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_35

    :cond_40
    const/4 v13, 0x0

    goto :goto_36

    :cond_41
    :goto_35
    const/4 v13, 0x1

    .line 284
    :goto_36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getFocusable()I

    move-result v3

    .line 285
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v5, v13

    const/4 v13, 0x0

    :goto_37
    if-ge v13, v4, :cond_48

    .line 286
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    const/16 v7, 0x13

    if-eq v6, v7, :cond_45

    const/16 v7, 0x1e

    if-eq v6, v7, :cond_43

    const/16 v7, 0x1f

    if-eq v6, v7, :cond_42

    goto :goto_38

    .line 287
    :cond_42
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    goto :goto_38

    .line 288
    :cond_43
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    :cond_44
    :goto_38
    const/16 v6, 0x12

    goto :goto_39

    .line 289
    :cond_45
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 290
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 291
    iget v3, v7, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v3, v6, :cond_47

    iget v3, v7, Landroid/util/TypedValue;->data:I

    if-nez v3, :cond_46

    const/4 v3, 0x0

    goto :goto_39

    :cond_46
    const/4 v3, 0x1

    goto :goto_39

    :cond_47
    iget v3, v7, Landroid/util/TypedValue;->data:I

    :goto_39
    add-int/lit8 v13, v13, 0x1

    goto :goto_37

    .line 292
    :cond_48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getFocusable()I

    move-result v0

    if-eq v3, v0, :cond_49

    .line 294
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(I)V

    .line 295
    :cond_49
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 296
    invoke-virtual {v1, v5}, Landroid/view/View;->setLongClickable(Z)V

    .line 297
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 298
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4b

    .line 299
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 300
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 301
    iget v0, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    if-ne v0, v2, :cond_51

    .line 302
    iget-boolean v0, v1, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    if-nez v0, :cond_4f

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v52, v2

    if-nez v3, :cond_4c

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x2

    .line 304
    invoke-static {v4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v52

    goto :goto_3a

    :cond_4c
    const/4 v4, 0x2

    :goto_3a
    move/from16 v3, v52

    cmpl-float v5, v53, v2

    if-nez v5, :cond_4d

    const/high16 v5, 0x42e00000    # 112.0f

    .line 305
    invoke-static {v4, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v53

    :cond_4d
    move/from16 v0, v53

    cmpl-float v2, v54, v2

    if-nez v2, :cond_4e

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_3b

    :cond_4e
    move/from16 v12, v54

    .line 306
    :goto_3b
    invoke-direct {v1, v3, v0, v12}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 307
    :cond_4f
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    goto :goto_3c

    :cond_50
    const/4 v2, 0x0

    .line 308
    iput v2, v1, Landroid/widget/TextView;->mAutoSizeTextType:I

    :cond_51
    :goto_3c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_67
        :pswitch_10
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_10
        :pswitch_10
        :pswitch_27
        :pswitch_10
        :pswitch_10
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public static synthetic access$000(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1100(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public static synthetic access$1200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method public static synthetic access$900(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object p0
.end method

.method private applyCompoundDrawableTint()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-boolean v2, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 11
    .line 12
    if-eqz v2, :cond_7

    .line 13
    .line 14
    :cond_1
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 17
    .line 18
    iget-boolean v0, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 25
    .line 26
    iget-object v5, v5, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    array-length v6, v5

    .line 29
    const/4 v7, 0x0

    .line 30
    :goto_0
    if-ge v7, v6, :cond_7

    .line 31
    .line 32
    aget-object v8, v5, v7

    .line 33
    .line 34
    if-nez v8, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 38
    .line 39
    iget-object v9, v9, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    if-ne v8, v9, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 55
    .line 56
    .line 57
    :cond_5
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-eqz v9, :cond_6

    .line 62
    .line 63
    invoke-virtual {v8, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 64
    .line 65
    .line 66
    :cond_6
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_7
    return-void
.end method

.method private applySingleLine(ZZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-eqz p3, :cond_1

    .line 23
    .line 24
    const p1, 0x7fffffff

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 32
    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method private assumeLayout()V
    .locals 8

    .line 1
    iget v0, p0, Landroid/view/View;->mRight:I

    .line 2
    .line 3
    iget v1, p0, Landroid/view/View;->mLeft:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :cond_0
    move v6, v0

    .line 21
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/high16 v0, 0x100000

    .line 26
    .line 27
    move v2, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v2, v6

    .line 30
    :goto_0
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    move-object v1, p0

    .line 34
    move v3, v6

    .line 35
    move-object v4, v5

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private autoSizeText()V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->isAutoSizeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    .line 9
    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_5

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-gtz v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/high16 v0, 0x100000

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    sub-int/2addr v0, v1

    .line 41
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-int/2addr v0, v1

    .line 46
    :goto_0
    move v2, v0

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int/2addr v0, v1

    .line 56
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    sub-int/2addr v0, v1

    .line 61
    if-lez v2, :cond_5

    .line 62
    .line 63
    if-gtz v0, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 67
    .line 68
    monitor-enter v8

    .line 69
    :try_start_0
    invoke-virtual {v8}, Landroid/graphics/RectF;->setEmpty()V

    .line 70
    .line 71
    .line 72
    int-to-float v1, v2

    .line 73
    iput v1, v8, Landroid/graphics/RectF;->right:F

    .line 74
    .line 75
    int-to-float v0, v0

    .line 76
    iput v0, v8, Landroid/graphics/RectF;->bottom:F

    .line 77
    .line 78
    invoke-direct {p0, v8}, Landroid/widget/TextView;->findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-float v0, v0

    .line 83
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    cmpl-float v1, v0, v1

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, v1, v0, v1}, Landroid/widget/TextView;->setTextSizeInternal(IFZ)V

    .line 93
    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 97
    .line 98
    iget v0, p0, Landroid/view/View;->mRight:I

    .line 99
    .line 100
    iget v1, p0, Landroid/view/View;->mLeft:I

    .line 101
    .line 102
    sub-int/2addr v0, v1

    .line 103
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    sub-int/2addr v0, v1

    .line 108
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    sub-int v6, v0, v1

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    move-object v1, p0

    .line 116
    move-object v4, v5

    .line 117
    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 118
    .line 119
    .line 120
    :cond_4
    monitor-exit v8

    .line 121
    goto :goto_2

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw v0

    .line 125
    :cond_5
    :goto_1
    return-void

    .line 126
    :cond_6
    :goto_2
    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    .line 128
    .line 129
    return-void
.end method

.method private bringTextIntoView()Z
    .locals 12

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 11
    .line 12
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    .line 13
    .line 14
    and-int/lit8 v1, v1, 0x70

    .line 15
    .line 16
    const/16 v2, 0x50

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sub-int/2addr v1, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v4

    .line 29
    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iget v7, p0, Landroid/view/View;->mRight:I

    .line 38
    .line 39
    iget v8, p0, Landroid/view/View;->mLeft:I

    .line 40
    .line 41
    sub-int/2addr v7, v8

    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    sub-int/2addr v7, v8

    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    sub-int/2addr v7, v8

    .line 52
    iget v8, p0, Landroid/view/View;->mBottom:I

    .line 53
    .line 54
    iget v9, p0, Landroid/view/View;->mTop:I

    .line 55
    .line 56
    sub-int/2addr v8, v9

    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    sub-int/2addr v8, v9

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    sub-int/2addr v8, v9

    .line 67
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 72
    .line 73
    if-ne v5, v10, :cond_3

    .line 74
    .line 75
    if-ne v6, v3, :cond_2

    .line 76
    .line 77
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 84
    .line 85
    if-ne v5, v10, :cond_5

    .line 86
    .line 87
    if-ne v6, v3, :cond_4

    .line 88
    .line 89
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 93
    .line 94
    :cond_5
    :goto_2
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 95
    .line 96
    if-ne v5, v10, :cond_7

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    float-to-double v10, v5

    .line 103
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    double-to-int v5, v10

    .line 108
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    float-to-double v0, v0

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    double-to-int v0, v0

    .line 118
    sub-int v1, v0, v5

    .line 119
    .line 120
    if-ge v1, v7, :cond_6

    .line 121
    .line 122
    add-int/2addr v0, v5

    .line 123
    div-int/lit8 v0, v0, 0x2

    .line 124
    .line 125
    div-int/lit8 v7, v7, 0x2

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    if-gez v6, :cond_9

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_7
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 132
    .line 133
    if-ne v5, v6, :cond_8

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    float-to-double v0, v0

    .line 140
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    double-to-int v0, v0

    .line 145
    :goto_3
    sub-int v5, v0, v7

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_8
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    float-to-double v0, v0

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 154
    .line 155
    .line 156
    move-result-wide v0

    .line 157
    double-to-int v5, v0

    .line 158
    :cond_9
    :goto_4
    if-ge v9, v8, :cond_b

    .line 159
    .line 160
    :cond_a
    move v9, v4

    .line 161
    goto :goto_5

    .line 162
    :cond_b
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    .line 163
    .line 164
    and-int/lit8 v0, v0, 0x70

    .line 165
    .line 166
    if-ne v0, v2, :cond_a

    .line 167
    .line 168
    sub-int/2addr v9, v8

    .line 169
    :goto_5
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 170
    .line 171
    if-ne v5, v0, :cond_d

    .line 172
    .line 173
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 174
    .line 175
    if-eq v9, v0, :cond_c

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_c
    return v4

    .line 179
    :cond_d
    :goto_6
    invoke-virtual {p0, v5, v9}, Landroid/view/View;->scrollTo(II)V

    .line 180
    .line 181
    .line 182
    return v3
.end method

.method private canMarquee()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mRight:I

    .line 2
    .line 3
    iget v1, p0, Landroid/view/View;->mLeft:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    const/4 v1, 0x0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    int-to-float v0, v0

    .line 26
    cmpl-float v2, v2, v0

    .line 27
    .line 28
    if-gtz v2, :cond_0

    .line 29
    .line 30
    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    cmpl-float v0, v2, v0

    .line 43
    .line 44
    if-lez v0, :cond_1

    .line 45
    .line 46
    :cond_0
    const/4 v1, 0x1

    .line 47
    :cond_1
    return v1
.end method

.method private changeListenerLocaleTo(Ljava/util/Locale;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mListenerChanged:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 11
    .line 12
    instance-of v1, v0, Landroid/text/method/DigitsKeyListener;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    check-cast v0, Landroid/text/method/DigitsKeyListener;

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;Landroid/text/method/DigitsKeyListener;)Landroid/text/method/DigitsKeyListener;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of v1, v0, Landroid/text/method/DateKeyListener;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-static {p1}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    instance-of v1, v0, Landroid/text/method/TimeKeyListener;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-static {p1}, Landroid/text/method/TimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    instance-of v0, v0, Landroid/text/method/DateTimeKeyListener;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-static {p1}, Landroid/text/method/DateTimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 50
    .line 51
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    .line 52
    .line 53
    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Landroid/widget/TextView;->setInputTypeFromEditor()V

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 66
    .line 67
    iget v0, p1, Landroid/widget/Editor;->mInputType:I

    .line 68
    .line 69
    and-int/lit8 v1, v0, 0xf

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    if-ne v1, v2, :cond_4

    .line 73
    .line 74
    or-int/lit16 v0, v0, 0x80

    .line 75
    .line 76
    iput v0, p1, Landroid/widget/Editor;->mInputType:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v2, 0x2

    .line 80
    if-ne v1, v2, :cond_5

    .line 81
    .line 82
    or-int/lit8 v0, v0, 0x10

    .line 83
    .line 84
    iput v0, p1, Landroid/widget/Editor;->mInputType:I

    .line 85
    .line 86
    nop

    .line 87
    :cond_5
    :goto_1
    return-void
.end method

.method private checkForRelayout()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    .line 5
    const/4 v1, -0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 9
    .line 10
    iget v2, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_6

    .line 13
    .line 14
    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 15
    .line 16
    iget v2, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_6

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 25
    .line 26
    if-eqz v0, :cond_6

    .line 27
    .line 28
    :cond_1
    iget v0, p0, Landroid/view/View;->mRight:I

    .line 29
    .line 30
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 31
    .line 32
    sub-int/2addr v0, v2

    .line 33
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    sub-int/2addr v0, v2

    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr v0, v2

    .line 43
    if-lez v0, :cond_6

    .line 44
    .line 45
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 58
    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    :goto_0
    move v5, v2

    .line 68
    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 69
    .line 70
    iget v2, p0, Landroid/view/View;->mRight:I

    .line 71
    .line 72
    iget v3, p0, Landroid/view/View;->mLeft:I

    .line 73
    .line 74
    sub-int/2addr v2, v3

    .line 75
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    sub-int/2addr v2, v3

    .line 80
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    sub-int v8, v2, v3

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    move-object v3, p0

    .line 88
    move-object v6, v7

    .line 89
    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 93
    .line 94
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 95
    .line 96
    if-eq v2, v3, :cond_5

    .line 97
    .line 98
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 101
    .line 102
    if-eq v2, v1, :cond_3

    .line 103
    .line 104
    const/4 v1, -0x1

    .line 105
    if-eq v2, v1, :cond_3

    .line 106
    .line 107
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-ne v1, v0, :cond_5

    .line 121
    .line 122
    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 123
    .line 124
    if-eqz v1, :cond_4

    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-ne v1, v0, :cond_5

    .line 131
    .line 132
    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 153
    .line 154
    .line 155
    :goto_1
    return-void
.end method

.method private checkForResize()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    .line 10
    const/4 v2, -0x2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    move v1, v3

    .line 18
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eq v0, v2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, -0x1

    .line 36
    if-ne v0, v2, :cond_2

    .line 37
    .line 38
    iget v0, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 39
    .line 40
    if-ltz v0, :cond_2

    .line 41
    .line 42
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 47
    .line 48
    if-eq v0, v2, :cond_2

    .line 49
    .line 50
    :goto_0
    move v1, v3

    .line 51
    :cond_2
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method private cleanupAutoSizePresetSizes([I)[I
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/util/IntArray;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_2

    .line 15
    .line 16
    aget v3, p1, v2

    .line 17
    .line 18
    if-lez v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->binarySearch(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-gez v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne v0, v2, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_1
    return-object p1
.end method

.method private clearAutoSizeConfiguration()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    .line 3
    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v1, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    .line 7
    .line 8
    iput v1, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    .line 9
    .line 10
    iput v1, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    .line 11
    .line 12
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    .line 13
    .line 14
    iput-object v1, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 15
    .line 16
    iput-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    .line 17
    .line 18
    return-void
.end method

.method private compressText(F)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    cmpl-float v2, p1, v0

    .line 11
    .line 12
    if-lez v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    .line 37
    cmpl-float v2, v2, v4

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-float/2addr v2, v4

    .line 48
    sub-float/2addr v2, p1

    .line 49
    div-float/2addr v2, p1

    .line 50
    cmpl-float p1, v2, v0

    .line 51
    .line 52
    if-lez p1, :cond_1

    .line 53
    .line 54
    const p1, 0x3d8f5c29    # 0.07f

    .line 55
    .line 56
    .line 57
    cmpg-float p1, v2, p1

    .line 58
    .line 59
    if-gtz p1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 62
    .line 63
    sub-float/2addr v4, v2

    .line 64
    const v0, 0x3ba3d70a    # 0.005f

    .line 65
    .line 66
    .line 67
    sub-float/2addr v4, v0

    .line 68
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Landroid/widget/TextView$2;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    return v3

    .line 80
    :cond_1
    return v1
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 11
    .line 12
    add-int/2addr v1, v0

    .line 13
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    add-int/2addr v1, v0

    .line 22
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 25
    .line 26
    add-int/2addr v1, v0

    .line 27
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 28
    .line 29
    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/Editor;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    add-int/lit8 v4, v0, -0x1

    .line 12
    .line 13
    if-ge v3, v4, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    add-int/lit8 v4, v4, -0x1

    .line 20
    .line 21
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/16 v5, 0xa

    .line 26
    .line 27
    if-eq v4, v5, :cond_0

    .line 28
    .line 29
    const/4 p0, -0x1

    .line 30
    return p0

    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_1
    if-ge v2, v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    float-to-double v0, v1

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    double-to-int p0, v0

    .line 54
    return p0
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

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
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x4

    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, -0x1

    .line 26
    if-eq p1, v0, :cond_9

    .line 27
    .line 28
    const/16 v0, 0x17

    .line 29
    .line 30
    if-eq p1, v0, :cond_8

    .line 31
    .line 32
    const/16 v0, 0x3d

    .line 33
    .line 34
    if-eq p1, v0, :cond_6

    .line 35
    .line 36
    const/16 v0, 0x42

    .line 37
    .line 38
    if-eq p1, v0, :cond_2

    .line 39
    .line 40
    packed-switch p1, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_a

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_a

    .line 56
    .line 57
    const v0, 0x1020022

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_a

    .line 65
    .line 66
    return v3

    .line 67
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_a

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_a

    .line 78
    .line 79
    const v0, 0x1020021

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_a

    .line 87
    .line 88
    return v3

    .line 89
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_a

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_a

    .line 100
    .line 101
    const v0, 0x1020020

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_a

    .line 109
    .line 110
    return v3

    .line 111
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_a

    .line 116
    .line 117
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 122
    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    invoke-interface {v0, p0, v1, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 136
    .line 137
    iget-object p1, p1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 138
    .line 139
    iput-boolean v2, p1, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 140
    .line 141
    return v3

    .line 142
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    and-int/lit8 v0, v0, 0x10

    .line 147
    .line 148
    if-nez v0, :cond_4

    .line 149
    .line 150
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_a

    .line 155
    .line 156
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    return v1

    .line 163
    :cond_5
    return v3

    .line 164
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_7

    .line 169
    .line 170
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_a

    .line 181
    .line 182
    return v1

    .line 183
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_a

    .line 188
    .line 189
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    return v1

    .line 196
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 197
    .line 198
    if-eqz v0, :cond_a

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_a

    .line 205
    .line 206
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 207
    .line 208
    .line 209
    return v3

    .line 210
    :cond_a
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 211
    .line 212
    if-eqz v0, :cond_d

    .line 213
    .line 214
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 215
    .line 216
    if-eqz v0, :cond_d

    .line 217
    .line 218
    if-eqz p3, :cond_c

    .line 219
    .line 220
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 224
    .line 225
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 226
    .line 227
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 228
    .line 229
    check-cast v4, Landroid/text/Editable;

    .line 230
    .line 231
    invoke-interface {v0, p0, v4, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .line 237
    .line 238
    if-eqz v0, :cond_b

    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 241
    .line 242
    .line 243
    return v3

    .line 244
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 245
    .line 246
    .line 247
    move v0, v1

    .line 248
    goto :goto_1

    .line 249
    :catchall_0
    move-exception p1

    .line 250
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 251
    .line 252
    .line 253
    throw p1

    .line 254
    :catch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 255
    .line 256
    .line 257
    :cond_c
    move v0, v2

    .line 258
    :goto_1
    if-eqz v0, :cond_d

    .line 259
    .line 260
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 264
    .line 265
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 266
    .line 267
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 268
    .line 269
    check-cast v4, Landroid/text/Editable;

    .line 270
    .line 271
    invoke-interface {v0, p0, v4, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 279
    .line 280
    .line 281
    if-eqz v0, :cond_d

    .line 282
    .line 283
    return v2

    .line 284
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 285
    .line 286
    if-eqz v0, :cond_12

    .line 287
    .line 288
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 289
    .line 290
    if-eqz v4, :cond_12

    .line 291
    .line 292
    if-eqz p3, :cond_f

    .line 293
    .line 294
    :try_start_1
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 295
    .line 296
    check-cast v4, Landroid/text/Spannable;

    .line 297
    .line 298
    invoke-interface {v0, p0, v4, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    .line 299
    .line 300
    .line 301
    move-result p3
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    if-eqz p3, :cond_e

    .line 303
    .line 304
    return v3

    .line 305
    :cond_e
    move p3, v1

    .line 306
    goto :goto_2

    .line 307
    :catch_1
    :cond_f
    move p3, v2

    .line 308
    :goto_2
    if-eqz p3, :cond_11

    .line 309
    .line 310
    iget-object p3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 311
    .line 312
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 313
    .line 314
    check-cast v0, Landroid/text/Spannable;

    .line 315
    .line 316
    invoke-interface {p3, p0, v0, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 317
    .line 318
    .line 319
    move-result p3

    .line 320
    if-eqz p3, :cond_11

    .line 321
    .line 322
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 323
    .line 324
    .line 325
    move-result p2

    .line 326
    if-nez p2, :cond_10

    .line 327
    .line 328
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-nez p1, :cond_10

    .line 333
    .line 334
    iput-boolean v2, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 335
    .line 336
    :cond_10
    const/4 p1, 0x2

    .line 337
    return p1

    .line 338
    :cond_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 339
    .line 340
    .line 341
    move-result p2

    .line 342
    const/16 p3, 0x101

    .line 343
    .line 344
    if-ne p2, p3, :cond_12

    .line 345
    .line 346
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isDirectionalNavigationKey(I)Z

    .line 347
    .line 348
    .line 349
    move-result p2

    .line 350
    if-eqz p2, :cond_12

    .line 351
    .line 352
    return v3

    .line 353
    :cond_12
    iget-boolean p2, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 354
    .line 355
    if-eqz p2, :cond_13

    .line 356
    .line 357
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 358
    .line 359
    .line 360
    move-result p1

    .line 361
    if-nez p1, :cond_13

    .line 362
    .line 363
    move v1, v3

    .line 364
    :cond_13
    return v1

    .line 365
    :pswitch_data_0
    .packed-switch 0x115
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ensureIterableTextForAccessibilitySelectable()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/text/Spannable;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-gt v1, v0, :cond_1

    .line 10
    .line 11
    add-int v2, v1, v0

    .line 12
    .line 13
    div-int/lit8 v2, v2, 0x2

    .line 14
    .line 15
    iget-object v3, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 16
    .line 17
    aget v3, v3, v2

    .line 18
    .line 19
    invoke-direct {p0, v3, p1}, Landroid/widget/TextView;->suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    move v4, v2

    .line 28
    move v2, v1

    .line 29
    move v1, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 32
    .line 33
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 36
    .line 37
    aget p1, p1, v2

    .line 38
    .line 39
    return p1

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "No available text sizes to choose from."

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v0, 0x10

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x70

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    :cond_0
    const/16 p1, 0x50

    .line 23
    .line 24
    if-eq v0, p1, :cond_2

    .line 25
    .line 26
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ge v1, p1, :cond_2

    .line 35
    .line 36
    const/16 v2, 0x30

    .line 37
    .line 38
    if-ne v0, v2, :cond_1

    .line 39
    .line 40
    sub-int/2addr p1, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sub-int/2addr p1, v1

    .line 43
    shr-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 p1, 0x0

    .line 47
    :goto_0
    return p1
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 15
    .line 16
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 17
    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_1
    add-int/2addr v1, p1

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    sub-int/2addr p1, v1

    .line 43
    iget v1, v0, Landroid/graphics/Insets;->top:I

    .line 44
    .line 45
    add-int/2addr p1, v1

    .line 46
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 47
    .line 48
    add-int/2addr p1, v0

    .line 49
    return p1
.end method

.method private getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeHintLocales()Landroid/os/LocaleList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method private getDesiredHeight()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v2, v1}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getHeight(Z)I

    move-result v0

    .line 6
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_1

    .line 7
    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8
    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 11
    iget v3, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    .line 12
    iget p1, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 13
    iget p2, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, p2, :cond_5

    instance-of v3, p1, Landroid/text/DynamicLayout;

    if-nez v3, :cond_3

    instance-of v3, p1, Landroid/text/BoringLayout;

    if-eqz v3, :cond_5

    .line 14
    :cond_3
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    if-eqz v1, :cond_4

    .line 15
    iget p2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 16
    iget p2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_4
    add-int v0, p1, v4

    .line 17
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 18
    :cond_5
    :goto_0
    iget p1, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne p1, v5, :cond_6

    .line 19
    iget p1, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, p1, :cond_7

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    iget p2, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr p2, v2

    mul-int/2addr p2, p1

    add-int/2addr v0, p2

    goto :goto_1

    .line 21
    :cond_6
    iget p1, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 22
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getHorizontalFadingEdgeStrength(FF)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    sub-float/2addr p1, p2

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    int-to-float p2, v0

    .line 15
    cmpl-float v0, p1, p2

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    return p1

    .line 22
    :cond_1
    div-float/2addr p1, p2

    .line 23
    return p1
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    if-ne p2, v0, :cond_1

    .line 24
    .line 25
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v0, p2

    .line 32
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_5
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    .line 46
    .line 47
    const v2, 0x800007

    .line 48
    .line 49
    .line 50
    and-int/2addr v0, v2

    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    if-eq v0, v1, :cond_5

    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    if-eq v0, v1, :cond_4

    .line 58
    .line 59
    const v1, 0x800003

    .line 60
    .line 61
    .line 62
    if-eq v0, v1, :cond_3

    .line 63
    .line 64
    const v1, 0x800005

    .line 65
    .line 66
    .line 67
    if-eq v0, v1, :cond_2

    .line 68
    .line 69
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 85
    .line 86
    :goto_0
    return-object v0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return p2

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object p1, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x5

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v0, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 13
    .line 14
    return-object v0
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    :goto_0
    return-object p1
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 12
    .line 13
    if-eqz v3, :cond_6

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_6

    .line 26
    .line 27
    :cond_0
    if-ltz v1, :cond_6

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-ne v1, v2, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 33
    .line 34
    if-eqz v2, :cond_6

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/widget/Editor;->isCursorVisible()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_6

    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 47
    .line 48
    iget-wide v6, v2, Landroid/widget/Editor;->mShowCursor:J

    .line 49
    .line 50
    sub-long/2addr v4, v6

    .line 51
    const-wide/16 v6, 0x3e8

    .line 52
    .line 53
    rem-long/2addr v4, v6

    .line 54
    const-wide/16 v6, 0x1f4

    .line 55
    .line 56
    cmp-long v2, v4, v6

    .line 57
    .line 58
    if-gez v2, :cond_6

    .line 59
    .line 60
    iget-boolean v2, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget-object v2, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 65
    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    new-instance v2, Landroid/graphics/Path;

    .line 69
    .line 70
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 74
    .line 75
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 81
    .line 82
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 83
    .line 84
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 85
    .line 86
    invoke-virtual {v2, v1, v4, v5}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/widget/Editor;->updateCursorsPositions()V

    .line 92
    .line 93
    .line 94
    iput-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 95
    .line 96
    :cond_2
    iget v1, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    .line 100
    .line 101
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 110
    .line 111
    if-eqz v4, :cond_5

    .line 112
    .line 113
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 114
    .line 115
    if-nez v4, :cond_4

    .line 116
    .line 117
    new-instance v4, Landroid/graphics/Path;

    .line 118
    .line 119
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 123
    .line 124
    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 130
    .line 131
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 132
    .line 133
    invoke-virtual {v4, v1, v2, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 134
    .line 135
    .line 136
    iput-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 137
    .line 138
    :cond_5
    iget v1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    .line 142
    .line 143
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_6
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0
.end method

.method private hasSpannableText()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private invalidateCursor(III)V
    .locals 1

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 3
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    :cond_1
    return-void
.end method

.method private isAutoSizeEnabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAutofillable()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getAutofillType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDirectionalNavigationKey(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isMarqueeFadeEnabled()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isMultilineInputType(I)Z
    .locals 1

    const v0, 0x2000f

    and-int/2addr p0, v0

    const v0, 0x20001

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPasswordInputType(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xfff

    const/16 v0, 0x81

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isShowingHint()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xfff

    const/16 v0, 0x91

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyAutoFillManagerAfterTextChangedIfNeeded()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->isAutofillable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-class v1, Landroid/view/autofill/AutofillManager;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private nullLayouts()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/text/BoringLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/text/BoringLayout;

    .line 12
    .line 13
    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 16
    .line 17
    instance-of v1, v0, Landroid/text/BoringLayout;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    check-cast v0, Landroid/text/BoringLayout;

    .line 26
    .line 27
    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 31
    .line 32
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 33
    .line 34
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 35
    .line 36
    iput-object v0, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 37
    .line 38
    iput-object v0, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 39
    .line 40
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method private onProvideAutoStructureForAssistOrAutofill(Landroid/view/ViewStructure;Z)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v2

    .line 23
    :goto_1
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget-boolean v3, p0, Landroid/widget/TextView;->mTextFromResource:Z

    .line 26
    .line 27
    xor-int/2addr v3, v2

    .line 28
    invoke-virtual {p1, v3}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    .line 29
    .line 30
    .line 31
    :cond_2
    if-eqz v0, :cond_3

    .line 32
    .line 33
    if-eqz p2, :cond_16

    .line 34
    .line 35
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 40
    .line 41
    .line 42
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x2

    .line 49
    if-gt v3, v2, :cond_6

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz p2, :cond_5

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {p1, v0, v3, v5}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :cond_6
    new-array v5, v4, [I

    .line 76
    .line 77
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 78
    .line 79
    .line 80
    aget v5, v5, v2

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    move-object v7, p0

    .line 87
    :goto_2
    instance-of v8, v6, Landroid/view/View;

    .line 88
    .line 89
    if-eqz v8, :cond_7

    .line 90
    .line 91
    move-object v7, v6

    .line 92
    check-cast v7, Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    goto :goto_2

    .line 99
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-ltz v5, :cond_8

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    sub-int/2addr v6, v2

    .line 111
    int-to-float v6, v6

    .line 112
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    goto :goto_3

    .line 117
    :cond_8
    neg-int v7, v5

    .line 118
    int-to-float v7, v7

    .line 119
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    sub-int/2addr v6, v2

    .line 124
    sub-int/2addr v6, v5

    .line 125
    int-to-float v5, v6

    .line 126
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    move v5, v7

    .line 131
    :goto_3
    sub-int v7, v6, v5

    .line 132
    .line 133
    div-int/lit8 v8, v7, 0x2

    .line 134
    .line 135
    sub-int v9, v5, v8

    .line 136
    .line 137
    if-gez v9, :cond_9

    .line 138
    .line 139
    move v9, v1

    .line 140
    :cond_9
    add-int/2addr v8, v6

    .line 141
    if-lt v8, v3, :cond_a

    .line 142
    .line 143
    add-int/lit8 v8, v3, -0x1

    .line 144
    .line 145
    :cond_a
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineStart(I)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineEnd(I)I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-ge v9, v10, :cond_c

    .line 162
    .line 163
    if-ge v9, v3, :cond_b

    .line 164
    .line 165
    move v3, v9

    .line 166
    :cond_b
    if-le v10, v8, :cond_c

    .line 167
    .line 168
    move v8, v10

    .line 169
    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    if-gtz v3, :cond_d

    .line 174
    .line 175
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    if-ge v8, v12, :cond_e

    .line 180
    .line 181
    :cond_d
    invoke-interface {v11, v3, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    :cond_e
    if-eqz p2, :cond_f

    .line 186
    .line 187
    invoke-virtual {p1, v11}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_f
    sub-int/2addr v9, v3

    .line 192
    sub-int/2addr v10, v3

    .line 193
    invoke-virtual {p1, v11, v9, v10}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 194
    .line 195
    .line 196
    add-int/2addr v7, v2

    .line 197
    new-array v3, v7, [I

    .line 198
    .line 199
    new-array v7, v7, [I

    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaselineOffset()I

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    move v9, v5

    .line 206
    :goto_4
    if-gt v9, v6, :cond_10

    .line 207
    .line 208
    sub-int v10, v9, v5

    .line 209
    .line 210
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineStart(I)I

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    aput v11, v3, v10

    .line 215
    .line 216
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    add-int/2addr v11, v8

    .line 221
    aput v11, v7, v10

    .line 222
    .line 223
    add-int/lit8 v9, v9, 0x1

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_10
    invoke-virtual {p1, v3, v7}, Landroid/view/ViewStructure;->setTextLines([I[I)V

    .line 227
    .line 228
    .line 229
    :goto_5
    if-nez p2, :cond_16

    .line 230
    .line 231
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    and-int/lit8 v0, p2, 0x1

    .line 236
    .line 237
    if-eqz v0, :cond_11

    .line 238
    .line 239
    move v1, v2

    .line 240
    :cond_11
    and-int/2addr p2, v4

    .line 241
    if-eqz p2, :cond_12

    .line 242
    .line 243
    or-int/lit8 v1, v1, 0x2

    .line 244
    .line 245
    :cond_12
    iget-object p2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 246
    .line 247
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFlags()I

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    and-int/lit8 v0, p2, 0x20

    .line 252
    .line 253
    if-eqz v0, :cond_13

    .line 254
    .line 255
    or-int/lit8 v1, v1, 0x1

    .line 256
    .line 257
    :cond_13
    and-int/lit8 v0, p2, 0x8

    .line 258
    .line 259
    if-eqz v0, :cond_14

    .line 260
    .line 261
    or-int/lit8 v1, v1, 0x4

    .line 262
    .line 263
    :cond_14
    and-int/lit8 p2, p2, 0x10

    .line 264
    .line 265
    if-eqz p2, :cond_15

    .line 266
    .line 267
    or-int/lit8 v1, v1, 0x8

    .line 268
    .line 269
    :cond_15
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    .line 278
    .line 279
    .line 280
    :cond_16
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 288
    .line 289
    .line 290
    move-result p2

    .line 291
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setInputType(I)V

    .line 292
    .line 293
    .line 294
    return-void
.end method

.method private parseDimensionArray(Landroid/content/res/TypedArray;)[I
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    aput v4, v1, v3

    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v1
.end method

.method private paste(IIZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "clipboard"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/ClipboardManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v1, v3, :cond_4

    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    instance-of v4, v3, Landroid/text/Spanned;

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 67
    .line 68
    check-cast v2, Landroid/text/Spannable;

    .line 69
    .line 70
    invoke-static {v2, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 74
    .line 75
    check-cast v2, Landroid/text/Editable;

    .line 76
    .line 77
    invoke-interface {v2, p1, p2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 83
    .line 84
    check-cast v4, Landroid/text/Editable;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const-string v6, "\n"

    .line 91
    .line 92
    invoke-interface {v4, v5, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 93
    .line 94
    .line 95
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 96
    .line 97
    check-cast v4, Landroid/text/Editable;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-interface {v4, v5, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    const-wide/16 p1, 0x0

    .line 110
    .line 111
    sput-wide p1, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 112
    .line 113
    :cond_5
    return-void
.end method

.method private performAccessibilityActionClick(Landroid/os/Bundle;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move p1, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 44
    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_6

    .line 52
    .line 53
    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->hasSpannableText()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_5

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_6

    .line 93
    .line 94
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 95
    .line 96
    iget-boolean v2, v2, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 97
    .line 98
    if-eqz v2, :cond_6

    .line 99
    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    invoke-virtual {v1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    or-int/2addr p1, v0

    .line 107
    :cond_6
    return p1
.end method

.method public static preloadFontCache()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    const-string v1, "H"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private registerForPreDraw()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/text/Editable;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    check-cast v0, Landroid/text/Editable;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    array-length v1, p3

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_2

    .line 17
    .line 18
    aget-object v3, p3, v2

    .line 19
    .line 20
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    aget-object v4, p3, v2

    .line 25
    .line 26
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eq v4, p1, :cond_2

    .line 31
    .line 32
    if-ne v3, p2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    aget-object v3, p3, v2

    .line 36
    .line 37
    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    return-void
.end method

.method public static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 1

    .line 1
    const-class v0, Landroid/text/ParcelableSpan;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    array-length p2, p1

    .line 8
    :goto_0
    if-lez p2, :cond_0

    .line 9
    .line 10
    add-int/lit8 p2, p2, -0x1

    .line 11
    .line 12
    aget-object v0, p1, p2

    .line 13
    .line 14
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method private requestAutofill()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/view/autofill/AutofillManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6
    .line 7
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 13
    .line 14
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroid/text/TextWatcher;

    .line 17
    .line 18
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    add-int/2addr p3, p2

    .line 25
    const-class p1, Landroid/text/style/SpellCheckSpan;

    .line 26
    .line 27
    invoke-direct {p0, p2, p3, p1}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    const-class p1, Landroid/text/style/SuggestionSpan;

    .line 31
    .line 32
    invoke-direct {p0, p2, p3, p1}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 6

    .line 5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_4

    .line 6
    iget-object v1, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 7
    :goto_0
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v0, v0, Landroid/text/InputFilter;

    if-eqz v0, :cond_1

    add-int/lit8 v4, v1, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-lez v4, :cond_4

    .line 8
    array-length v5, p2

    add-int/2addr v5, v4

    new-array v4, v5, [Landroid/text/InputFilter;

    .line 9
    array-length v5, p2

    invoke-static {p2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_2

    .line 10
    array-length v1, p2

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    aput-object v3, v4, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v0, :cond_3

    .line 11
    array-length p2, p2

    add-int/2addr p2, v2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast v0, Landroid/text/InputFilter;

    aput-object v0, v4, p2

    .line 12
    :cond_3
    invoke-interface {p1, v4}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    return-void

    .line 13
    :cond_4
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private setInputType(IZ)V
    .locals 6

    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_1

    .line 19
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_1
    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_2

    .line 20
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_2
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_3

    .line 21
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    .line 22
    :cond_3
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 23
    :goto_1
    invoke-static {v2, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    goto/16 :goto_5

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    .line 24
    invoke-direct {p0}, Landroid/widget/TextView;->getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;

    move-result-object v0

    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    and-int/lit16 v5, p1, 0x2000

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move v2, v1

    .line 25
    :goto_3
    invoke-static {v0, v4, v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    if-eqz v0, :cond_8

    .line 26
    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    and-int/lit8 v4, v0, 0xf

    if-eq v4, v3, :cond_8

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_7

    or-int/lit16 v0, v0, 0x80

    :cond_7
    move p1, v0

    :cond_8
    move-object v0, v2

    goto :goto_5

    :cond_9
    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    .line 27
    invoke-direct {p0}, Landroid/widget/TextView;->getCustomLocaleForKeyListenerOrNull()Ljava/util/Locale;

    move-result-object v0

    and-int/lit16 v2, p1, 0xff0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_b

    const/16 v3, 0x20

    if-eq v2, v3, :cond_a

    .line 28
    invoke-static {v0}, Landroid/text/method/DateTimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateTimeKeyListener;

    move-result-object v0

    goto :goto_4

    .line 29
    :cond_a
    invoke-static {v0}, Landroid/text/method/TimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;

    move-result-object v0

    goto :goto_4

    .line 30
    :cond_b
    invoke-static {v0}, Landroid/text/method/DateKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/DateKeyListener;

    move-result-object v0

    .line 31
    :goto_4
    iget-boolean v2, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    if-eqz v2, :cond_e

    .line 32
    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result p1

    goto :goto_5

    :cond_c
    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 33
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v0

    goto :goto_5

    .line 34
    :cond_d
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    .line 35
    :cond_e
    :goto_5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 36
    iput-boolean v1, p0, Landroid/widget/TextView;->mListenerChanged:Z

    if-eqz p2, :cond_f

    .line 37
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 38
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v0, p1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_6

    .line 39
    :cond_f
    invoke-direct {p0, v0}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    :goto_6
    return-void
.end method

.method private setInputTypeFromEditor()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 4
    .line 5
    invoke-interface {v1}, Landroid/text/method/KeyListener;->getInputType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, v0, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    .line 16
    .line 17
    :goto_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 18
    .line 19
    invoke-direct {p0, v0}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    .line 6
    .line 7
    and-int/lit8 v2, v1, 0xf

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v2, v3, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const p1, -0x20001

    .line 15
    .line 16
    .line 17
    and-int/2addr p1, v1

    .line 18
    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/high16 p1, 0x20000

    .line 22
    .line 23
    or-int/2addr p1, v1

    .line 24
    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 12
    .line 13
    iget-object v1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 14
    .line 15
    if-eq v1, p1, :cond_2

    .line 16
    .line 17
    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 22
    .line 23
    instance-of v0, p1, Landroid/text/Editable;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 31
    .line 32
    check-cast p1, Landroid/text/Editable;

    .line 33
    .line 34
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 35
    .line 36
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "clipboard"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/ClipboardManager;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sput-wide v0, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 21
    .line 22
    return-void
.end method

.method private setRawTextSize(FZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    cmpl-float v0, p1, v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    .line 24
    .line 25
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    move v2, v0

    .line 11
    :goto_1
    if-eqz v2, :cond_5

    .line 12
    .line 13
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 14
    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    new-instance v2, Landroid/widget/TextView$Drawables;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, v3}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 27
    .line 28
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 29
    .line 30
    iput-boolean v0, v3, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 31
    .line 32
    iget-object v0, v2, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {p1, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, v2, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 76
    .line 77
    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 78
    .line 79
    :goto_2
    if-eqz p2, :cond_4

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {p2, v1, v1, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 99
    .line 100
    .line 101
    iput-object p2, v2, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 117
    .line 118
    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 119
    .line 120
    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 127
    .line 128
    .line 129
    :cond_5
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v0, Landroid/widget/TextView;->mTextFromResource:Z

    const-string v3, ""

    if-nez p1, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 8
    :cond_1
    iget-boolean v5, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v5, :cond_2

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 9
    :cond_2
    instance-of v5, v4, Landroid/text/Spanned;

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Landroid/text/Spanned;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 10
    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_4

    .line 11
    iget-object v5, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    invoke-virtual {p0, v6}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 13
    iput v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 15
    iput v6, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 16
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 17
    :cond_4
    iget-object v5, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v5, v5

    move v14, v2

    :goto_2
    if-ge v14, v5, :cond_6

    .line 18
    iget-object v7, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v7, v7, v14

    const/4 v9, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sget-object v11, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v4

    invoke-interface/range {v7 .. v13}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object v4, v7

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_8

    .line 19
    iget-object v5, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    .line 20
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 21
    iget-object v5, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-direct {p0, v5, v2, v3, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_3

    .line 22
    :cond_7
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {p0, v3, v2, v2, v5}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_8
    move/from16 v3, p4

    .line 23
    :goto_3
    iget-object v5, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    move v6, v2

    .line 24
    :goto_4
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq v1, v5, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v7

    if-nez v7, :cond_d

    if-eqz v6, :cond_a

    goto :goto_6

    .line 25
    :cond_a
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    if-eq v1, v7, :cond_c

    iget-object v7, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_b

    goto :goto_5

    .line 26
    :cond_b
    instance-of v7, v4, Landroid/widget/TextView$CharWrapper;

    if-nez v7, :cond_e

    .line 27
    invoke-static {v4}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_7

    .line 28
    :cond_c
    :goto_5
    iget-object v7, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v7, v4}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v4

    goto :goto_7

    .line 29
    :cond_d
    :goto_6
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 30
    iget-object v7, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->forgetUndoRedo()V

    .line 31
    iget-object v7, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    invoke-virtual {v7, v4}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v4

    .line 32
    iget-object v7, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v4, v7}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 33
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 34
    invoke-virtual {v7, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 35
    :cond_e
    :goto_7
    iget v7, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v7, :cond_13

    if-eq v1, v5, :cond_10

    .line 36
    instance-of v7, v4, Landroid/text/Spannable;

    if-eqz v7, :cond_f

    goto :goto_8

    .line 37
    :cond_f
    iget-object v7, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v7, v4}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v7

    goto :goto_9

    .line 38
    :cond_10
    :goto_8
    move-object v7, v4

    check-cast v7, Landroid/text/Spannable;

    .line 39
    :goto_9
    iget v8, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    invoke-static {v7, v8}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v8

    if-eqz v8, :cond_13

    if-ne v1, v5, :cond_11

    move-object v1, v5

    goto :goto_a

    .line 40
    :cond_11
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 41
    :goto_a
    iput-object v7, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 42
    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-nez v4, :cond_12

    .line 43
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_12
    move-object v4, v7

    .line 44
    :cond_13
    iput-object v1, v0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 45
    iput-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 46
    iget-object v1, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v1, :cond_14

    .line 47
    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto :goto_b

    .line 48
    :cond_14
    invoke-interface {v1, v4, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 49
    :goto_b
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 50
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_19

    iget-boolean v5, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v5, :cond_19

    .line 51
    move-object v5, v4

    check-cast v5, Landroid/text/Spannable;

    .line 52
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v5, v2, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/widget/TextView$ChangeWatcher;

    .line 53
    array-length v8, v7

    move v9, v2

    :goto_c
    if-ge v9, v8, :cond_15

    .line 54
    aget-object v10, v7, v9

    invoke-interface {v5, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 55
    :cond_15
    iget-object v7, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v7, :cond_16

    new-instance v7, Landroid/widget/TextView$ChangeWatcher;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v7, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 56
    :cond_16
    iget-object v7, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const v8, 0x640012

    invoke-interface {v5, v7, v2, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 57
    iget-object v7, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_17

    invoke-virtual {v7, v5}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    .line 58
    :cond_17
    iget-object v7, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v7, :cond_18

    const/16 v8, 0x12

    .line 59
    invoke-interface {v5, v7, v2, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 60
    :cond_18
    iget-object v7, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_19

    .line 61
    invoke-interface {v7, p0, v5}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 62
    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_19

    iput-boolean v2, v5, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 63
    :cond_19
    iget-object v5, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_1a

    .line 64
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 65
    :cond_1a
    invoke-virtual {p0, v4, v2, v3, v1}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 66
    invoke-virtual {p0, v4, v2, v3, v1}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v1, 0x2

    .line 67
    invoke-virtual {p0, v1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    if-eqz v6, :cond_1b

    .line 68
    check-cast v4, Landroid/text/Editable;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    goto :goto_d

    .line 69
    :cond_1b
    invoke-direct {p0}, Landroid/widget/TextView;->notifyAutoFillManagerAfterTextChangedIfNeeded()V

    .line 70
    :goto_d
    iget-object v1, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1c
    return-void
.end method

.method private setTextSizeInternal(IFZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-direct {p0, p1, p3}, Landroid/widget/TextView;->setRawTextSize(FZ)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;II)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {p2, p4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eq p2, p4, :cond_1

    .line 17
    .line 18
    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    const/4 p2, 0x1

    .line 29
    if-eq p3, p2, :cond_5

    .line 30
    .line 31
    const/4 p2, 0x2

    .line 32
    if-eq p3, p2, :cond_4

    .line 33
    .line 34
    const/4 p2, 0x3

    .line 35
    if-eq p3, p2, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_5
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 45
    .line 46
    :goto_1
    invoke-virtual {p0, p1, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private setupAutoSizeText()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_4

    .line 12
    .line 13
    iget-boolean v0, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    move v3, v2

    .line 30
    :goto_0
    iget v4, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    .line 31
    .line 32
    add-float/2addr v4, v0

    .line 33
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget v5, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    .line 38
    .line 39
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-gt v4, v5, :cond_1

    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    iget v4, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    .line 48
    .line 49
    add-float/2addr v0, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-array v0, v3, [I

    .line 52
    .line 53
    iget v4, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    .line 54
    .line 55
    :goto_1
    if-ge v1, v3, :cond_2

    .line 56
    .line 57
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    aput v5, v0, v1

    .line 62
    .line 63
    iget v5, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    .line 64
    .line 65
    add-float/2addr v4, v5

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-direct {p0, v0}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 74
    .line 75
    :cond_3
    iput-boolean v2, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    iput-boolean v1, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    .line 79
    .line 80
    :goto_2
    iget-boolean v0, p0, Landroid/widget/TextView;->mNeedsAutoSizeText:Z

    .line 81
    .line 82
    return v0
.end method

.method private setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    aput v3, v1, v2

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 27
    .line 28
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizesConfiguration()Z

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method private setupAutoSizeUniformPresetSizesConfiguration()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    move v4, v3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v4, v2

    .line 11
    :goto_0
    iput-boolean v4, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    .line 12
    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    iput v3, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    .line 16
    .line 17
    aget v2, v0, v2

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    iput v2, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    .line 21
    .line 22
    sub-int/2addr v1, v3

    .line 23
    aget v0, v0, v1

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    iput v0, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    .line 27
    .line 28
    const/high16 v0, -0x40800000    # -1.0f

    .line 29
    .line 30
    iput v0, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    .line 31
    .line 32
    :cond_1
    return v4
.end method

.method private shareSelectedText()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v2, "android.intent.action.SEND"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "text/plain"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string v2, "android.intent.extra.TEXT"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 47
    .line 48
    check-cast v0, Landroid/text/Spannable;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    .line 20
    .line 21
    and-int/lit8 v3, v0, 0xf

    .line 22
    .line 23
    if-ne v3, v2, :cond_3

    .line 24
    .line 25
    and-int/lit16 v0, v0, 0xff0

    .line 26
    .line 27
    const/16 v3, 0x20

    .line 28
    .line 29
    if-eq v0, v3, :cond_2

    .line 30
    .line 31
    const/16 v3, 0x30

    .line 32
    .line 33
    if-ne v0, v3, :cond_3

    .line 34
    .line 35
    :cond_2
    return v2

    .line 36
    :cond_3
    return v1
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v2, v0, 0xf

    if-ne v2, v1, :cond_1

    and-int/lit16 v0, v0, 0xff0

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x20000

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method private startMarquee()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    int-to-float v0, v0

    .line 23
    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_6

    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x1

    .line 57
    if-ne v0, v1, :cond_6

    .line 58
    .line 59
    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 66
    .line 67
    if-ne v0, v1, :cond_4

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 71
    .line 72
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 73
    .line 74
    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 75
    .line 76
    iput-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 77
    .line 78
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    new-instance v0, Landroid/widget/TextView$Marquee;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 99
    .line 100
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 101
    .line 102
    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    .line 105
    .line 106
    .line 107
    :cond_6
    return-void
.end method

.method private startStopMarquee(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 2
    .line 3
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method private stopMarquee()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 23
    .line 24
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 25
    .line 26
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 27
    .line 28
    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 29
    .line 30
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method private suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    new-instance v2, Landroid/text/TextPaint;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 27
    .line 28
    .line 29
    :goto_1
    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    .line 39
    .line 40
    int-to-float p1, p1

    .line 41
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object v2, p0, Landroid/widget/TextView;->mTempTextPaint:Landroid/text/TextPaint;

    .line 49
    .line 50
    iget v3, p2, Landroid/graphics/RectF;->right:F

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-static {v0, v4, p1, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v0, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p0}, Landroid/widget/TextView;->getJustificationMode()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget v2, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    if-ne v2, v3, :cond_2

    .line 117
    .line 118
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const v2, 0x7fffffff

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const/4 v0, -0x1

    .line 140
    if-eq v1, v0, :cond_3

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-le v0, v1, :cond_3

    .line 147
    .line 148
    return v4

    .line 149
    :cond_3
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    int-to-float p1, p1

    .line 154
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 155
    .line 156
    cmpl-float p1, p1, p2

    .line 157
    .line 158
    if-lez p1, :cond_4

    .line 159
    .line 160
    return v4

    .line 161
    :cond_4
    return v3
.end method

.method private unregisterForPreDraw()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 12
    .line 13
    return-void
.end method

.method private updateTextColors()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 18
    .line 19
    move v0, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v1, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 35
    .line 36
    iget v5, v4, Landroid/text/TextPaint;->linkColor:I

    .line 37
    .line 38
    if-eq v1, v5, :cond_1

    .line 39
    .line 40
    iput v1, v4, Landroid/text/TextPaint;->linkColor:I

    .line 41
    .line 42
    move v0, v3

    .line 43
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v1, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 56
    .line 57
    if-eq v1, v2, :cond_2

    .line 58
    .line 59
    iput v1, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 60
    .line 61
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v3, v0

    .line 71
    :goto_1
    if-eqz v3, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    new-instance v0, Landroid/widget/TextView$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "textservices"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/textservice/TextServicesManager;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    .line 26
    .line 27
    return-void
.end method

.method private validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    const-string v2, "px) is less or equal to (0px)"

    .line 5
    .line 6
    if-lez v1, :cond_2

    .line 7
    .line 8
    cmpg-float v1, p2, p1

    .line 9
    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    cmpg-float v0, p3, v0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    .line 18
    .line 19
    iput p1, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    .line 20
    .line 21
    iput p2, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    .line 22
    .line 23
    iput p3, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v0, "The auto-size step granularity ("

    .line 34
    .line 35
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "Maximum auto-size text size ("

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, "px) is less or equal to minimum auto-size text size ("

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, "px)"

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p3

    .line 85
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    new-instance p3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v0, "Minimum auto-size text size ("

    .line 90
    .line 91
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p2
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v2, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    .line 20
    .line 21
    invoke-virtual {p3, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-lez p3, :cond_4

    .line 26
    .line 27
    if-ltz v0, :cond_4

    .line 28
    .line 29
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lt v0, v1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-array v1, p3, [Landroid/graphics/RectF;

    .line 39
    .line 40
    new-instance v8, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 41
    .line 42
    invoke-direct {v8}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    add-int v5, v0, p3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    int-to-float v6, v2

    .line 52
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v7, v2

    .line 57
    move-object v2, p0

    .line 58
    move-object v3, v8

    .line 59
    move v4, v0

    .line 60
    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-virtual {v8, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v3, 0x0

    .line 73
    :goto_0
    if-ge v3, p3, :cond_3

    .line 74
    .line 75
    add-int v4, v0, v3

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->getCharacterBoundsFlags(I)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    const/4 v6, 0x1

    .line 82
    and-int/2addr v5, v6

    .line 83
    if-ne v5, v6, :cond_2

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->getCharacterBounds(I)Landroid/graphics/RectF;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    invoke-virtual {p0, v4, v6}, Landroid/view/View;->mapRectFromViewToScreenCoords(Landroid/graphics/RectF;Z)V

    .line 92
    .line 93
    .line 94
    aput-object v4, v1, v3

    .line 95
    .line 96
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    :goto_1
    const-string p1, "TextView"

    .line 108
    .line 109
    const-string p2, "Invalid arguments for accessibility character locations"

    .line 110
    .line 111
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_2
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Editable;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 5
    iget p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz p1, :cond_1

    .line 6
    iget-object p2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p2, Landroid/text/Spannable;

    invoke-static {p2, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    instance-of v0, p1, Landroid/text/Spannable;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    move-object v0, p1

    .line 34
    check-cast v0, Landroid/text/Spannable;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " could not be autofilled into "

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v0, "TextView"

    .line 65
    .line 66
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iput v1, v0, Landroid/widget/TextView;->mDeferScroll:I

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 25
    .line 26
    :goto_0
    if-nez v2, :cond_2

    .line 27
    .line 28
    return v3

    .line 29
    :cond_2
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    sget-object v5, Landroid/widget/TextView$4;->$SwitchMap$android$text$Layout$Alignment:[I

    .line 34
    .line 35
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    aget v5, v5, v6

    .line 44
    .line 45
    const/4 v6, 0x2

    .line 46
    const/4 v7, 0x1

    .line 47
    if-eq v5, v7, :cond_6

    .line 48
    .line 49
    if-eq v5, v6, :cond_5

    .line 50
    .line 51
    const/4 v8, 0x3

    .line 52
    if-eq v5, v8, :cond_4

    .line 53
    .line 54
    const/4 v8, 0x4

    .line 55
    if-eq v5, v8, :cond_3

    .line 56
    .line 57
    move v5, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    neg-int v5, v5

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    const/4 v5, -0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_6
    move v5, v7

    .line 73
    :goto_1
    if-lez v5, :cond_7

    .line 74
    .line 75
    move v8, v7

    .line 76
    goto :goto_2

    .line 77
    :cond_7
    move v8, v3

    .line 78
    :goto_2
    invoke-virtual {v2, v1, v8}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    float-to-int v1, v1

    .line 83
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    add-int/lit8 v9, v4, 0x1

    .line 88
    .line 89
    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineTop(I)I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    float-to-double v10, v10

    .line 98
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v10

    .line 102
    double-to-int v10, v10

    .line 103
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineRight(I)F

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    float-to-double v11, v11

    .line 108
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 109
    .line 110
    .line 111
    move-result-wide v11

    .line 112
    double-to-int v11, v11

    .line 113
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iget v12, v0, Landroid/view/View;->mRight:I

    .line 118
    .line 119
    iget v13, v0, Landroid/view/View;->mLeft:I

    .line 120
    .line 121
    sub-int/2addr v12, v13

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    sub-int/2addr v12, v13

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    sub-int/2addr v12, v13

    .line 132
    iget v13, v0, Landroid/view/View;->mBottom:I

    .line 133
    .line 134
    iget v14, v0, Landroid/view/View;->mTop:I

    .line 135
    .line 136
    sub-int/2addr v13, v14

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    sub-int/2addr v13, v14

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    sub-int/2addr v13, v14

    .line 147
    iget-boolean v14, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 148
    .line 149
    if-nez v14, :cond_8

    .line 150
    .line 151
    sub-int v14, v11, v10

    .line 152
    .line 153
    if-le v14, v12, :cond_8

    .line 154
    .line 155
    if-le v11, v1, :cond_8

    .line 156
    .line 157
    add-int v11, v10, v12

    .line 158
    .line 159
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    :cond_8
    sub-int v14, v9, v8

    .line 164
    .line 165
    div-int/2addr v14, v6

    .line 166
    div-int/lit8 v15, v13, 0x4

    .line 167
    .line 168
    if-le v14, v15, :cond_9

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_9
    move v15, v14

    .line 172
    :goto_3
    div-int/lit8 v3, v12, 0x4

    .line 173
    .line 174
    if-le v14, v3, :cond_a

    .line 175
    .line 176
    move v14, v3

    .line 177
    :cond_a
    iget v3, v0, Landroid/view/View;->mScrollX:I

    .line 178
    .line 179
    iget v7, v0, Landroid/view/View;->mScrollY:I

    .line 180
    .line 181
    sub-int v6, v8, v7

    .line 182
    .line 183
    if-ge v6, v15, :cond_b

    .line 184
    .line 185
    sub-int v6, v8, v15

    .line 186
    .line 187
    move/from16 v16, v4

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_b
    move/from16 v16, v4

    .line 191
    .line 192
    move v6, v7

    .line 193
    :goto_4
    sub-int v4, v9, v6

    .line 194
    .line 195
    sub-int v15, v13, v15

    .line 196
    .line 197
    if-le v4, v15, :cond_c

    .line 198
    .line 199
    sub-int v6, v9, v15

    .line 200
    .line 201
    :cond_c
    sub-int v4, v2, v6

    .line 202
    .line 203
    if-ge v4, v13, :cond_d

    .line 204
    .line 205
    sub-int v6, v2, v13

    .line 206
    .line 207
    :cond_d
    rsub-int/lit8 v2, v6, 0x0

    .line 208
    .line 209
    if-lez v2, :cond_e

    .line 210
    .line 211
    const/4 v6, 0x0

    .line 212
    :cond_e
    if-eqz v5, :cond_10

    .line 213
    .line 214
    sub-int v2, v1, v3

    .line 215
    .line 216
    if-ge v2, v14, :cond_f

    .line 217
    .line 218
    sub-int v2, v1, v14

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_f
    move v2, v3

    .line 222
    :goto_5
    sub-int v4, v1, v2

    .line 223
    .line 224
    sub-int v13, v12, v14

    .line 225
    .line 226
    if-le v4, v13, :cond_11

    .line 227
    .line 228
    sub-int v2, v1, v13

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_10
    move v2, v3

    .line 232
    :cond_11
    :goto_6
    if-gez v5, :cond_13

    .line 233
    .line 234
    sub-int v4, v10, v2

    .line 235
    .line 236
    if-lez v4, :cond_12

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_12
    move v10, v2

    .line 240
    :goto_7
    sub-int v2, v11, v10

    .line 241
    .line 242
    if-ge v2, v12, :cond_1d

    .line 243
    .line 244
    :goto_8
    sub-int v10, v11, v12

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_13
    if-lez v5, :cond_16

    .line 248
    .line 249
    sub-int v4, v11, v2

    .line 250
    .line 251
    if-ge v4, v12, :cond_14

    .line 252
    .line 253
    sub-int v2, v11, v12

    .line 254
    .line 255
    :cond_14
    sub-int v4, v10, v2

    .line 256
    .line 257
    if-lez v4, :cond_15

    .line 258
    .line 259
    goto :goto_9

    .line 260
    :cond_15
    move v10, v2

    .line 261
    goto :goto_9

    .line 262
    :cond_16
    sub-int v4, v11, v10

    .line 263
    .line 264
    if-gt v4, v12, :cond_17

    .line 265
    .line 266
    sub-int/2addr v12, v4

    .line 267
    const/4 v2, 0x2

    .line 268
    div-int/2addr v12, v2

    .line 269
    sub-int/2addr v10, v12

    .line 270
    goto :goto_9

    .line 271
    :cond_17
    sub-int v4, v11, v14

    .line 272
    .line 273
    if-le v1, v4, :cond_18

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_18
    add-int v4, v10, v14

    .line 277
    .line 278
    if-ge v1, v4, :cond_19

    .line 279
    .line 280
    goto :goto_9

    .line 281
    :cond_19
    if-le v10, v2, :cond_1a

    .line 282
    .line 283
    goto :goto_9

    .line 284
    :cond_1a
    add-int v4, v2, v12

    .line 285
    .line 286
    if-ge v11, v4, :cond_1b

    .line 287
    .line 288
    goto :goto_8

    .line 289
    :cond_1b
    sub-int v4, v1, v2

    .line 290
    .line 291
    if-ge v4, v14, :cond_1c

    .line 292
    .line 293
    sub-int v2, v1, v14

    .line 294
    .line 295
    :cond_1c
    move v10, v2

    .line 296
    sub-int v2, v1, v10

    .line 297
    .line 298
    sub-int/2addr v12, v14

    .line 299
    if-le v2, v12, :cond_1d

    .line 300
    .line 301
    sub-int v10, v1, v12

    .line 302
    .line 303
    :cond_1d
    :goto_9
    if-ne v10, v3, :cond_1f

    .line 304
    .line 305
    if-eq v6, v7, :cond_1e

    .line 306
    .line 307
    goto :goto_a

    .line 308
    :cond_1e
    const/4 v3, 0x0

    .line 309
    goto :goto_d

    .line 310
    :cond_1f
    :goto_a
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 311
    .line 312
    if-nez v2, :cond_20

    .line 313
    .line 314
    invoke-virtual {v0, v10, v6}, Landroid/view/View;->scrollTo(II)V

    .line 315
    .line 316
    .line 317
    goto :goto_c

    .line 318
    :cond_20
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 319
    .line 320
    .line 321
    move-result-wide v2

    .line 322
    iget-wide v4, v0, Landroid/widget/TextView;->mLastScroll:J

    .line 323
    .line 324
    sub-long/2addr v2, v4

    .line 325
    iget v4, v0, Landroid/view/View;->mScrollX:I

    .line 326
    .line 327
    sub-int/2addr v10, v4

    .line 328
    iget v5, v0, Landroid/view/View;->mScrollY:I

    .line 329
    .line 330
    sub-int/2addr v6, v5

    .line 331
    const-wide/16 v11, 0xfa

    .line 332
    .line 333
    cmp-long v2, v2, v11

    .line 334
    .line 335
    if-lez v2, :cond_21

    .line 336
    .line 337
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 338
    .line 339
    invoke-virtual {v2, v4, v5, v10, v6}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 340
    .line 341
    .line 342
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 343
    .line 344
    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    invoke-virtual {v0, v2}, Landroid/view/View;->awakenScrollBars(I)Z

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 352
    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_21
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 356
    .line 357
    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-nez v2, :cond_22

    .line 362
    .line 363
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 364
    .line 365
    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 366
    .line 367
    .line 368
    :cond_22
    invoke-virtual {v0, v10, v6}, Landroid/view/View;->scrollBy(II)V

    .line 369
    .line 370
    .line 371
    :goto_b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 372
    .line 373
    .line 374
    move-result-wide v2

    .line 375
    iput-wide v2, v0, Landroid/widget/TextView;->mLastScroll:J

    .line 376
    .line 377
    :goto_c
    const/4 v3, 0x1

    .line 378
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eqz v2, :cond_24

    .line 383
    .line 384
    iget-object v2, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 385
    .line 386
    if-nez v2, :cond_23

    .line 387
    .line 388
    new-instance v2, Landroid/graphics/Rect;

    .line 389
    .line 390
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 391
    .line 392
    .line 393
    iput-object v2, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 394
    .line 395
    :cond_23
    iget-object v2, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 396
    .line 397
    add-int/lit8 v4, v1, -0x2

    .line 398
    .line 399
    const/4 v5, 0x2

    .line 400
    add-int/2addr v1, v5

    .line 401
    invoke-virtual {v2, v4, v8, v1, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 405
    .line 406
    move/from16 v2, v16

    .line 407
    .line 408
    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 409
    .line 410
    .line 411
    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 412
    .line 413
    iget v2, v0, Landroid/view/View;->mScrollX:I

    .line 414
    .line 415
    iget v4, v0, Landroid/view/View;->mScrollY:I

    .line 416
    .line 417
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 418
    .line 419
    .line 420
    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-eqz v1, :cond_24

    .line 427
    .line 428
    const/4 v7, 0x1

    .line 429
    goto :goto_e

    .line 430
    :cond_24
    move v7, v3

    .line 431
    :goto_e
    return v7
.end method

.method public canCopy()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_1
    return v1
.end method

.method public canCut()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 24
    .line 25
    instance-of v0, v0, Landroid/text/Editable;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :cond_1
    return v1
.end method

.method public canPaste()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/text/Editable;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ltz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "clipboard"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/content/ClipboardManager;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0
.end method

.method public canPasteAsPlainText()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "clipboard"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/ClipboardManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string/jumbo v3, "text/plain"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    instance-of v1, v0, Landroid/text/Spanned;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    check-cast v0, Landroid/text/Spanned;

    .line 51
    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->hasStyleSpan(Landroid/text/Spanned;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    return v0

    .line 60
    :cond_1
    const-string/jumbo v0, "text/html"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    return v0
.end method

.method public canProcessText()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public canRedo()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canRequestAutofill()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->isAutofillable()Z

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
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-class v2, Landroid/view/autofill/AutofillManager;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_1
    return v1
.end method

.method public canSelectAllText()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public canSelectText()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canShare()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->isDeviceProvisioned()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public canUndo()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancelLongPress()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public clearComposingText()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/text/Spannable;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroid/text/Spannable;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    .line 10
    .line 11
    and-int/lit8 v1, v1, 0x7

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    float-to-int v0, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    return v0

    .line 28
    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public computeScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/view/View;->mScrollX:I

    .line 18
    .line 19
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Landroid/view/View;->mScrollY:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public convertToLocalHorizontalCoordinate(F)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    sub-float/2addr p1, v0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    add-float/2addr p1, v0

    .line 34
    return p1
.end method

.method public debug(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "frame={"

    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, ", "

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Landroid/view/View;->mRight:I

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string/jumbo v1, "} scroll={"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 60
    .line 61
    const-string/jumbo v1, "} "

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0, v1}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    const-string v0, "mText=\""

    .line 73
    .line 74
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, "\" "

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    const-string v0, "mLayout width="

    .line 97
    .line 98
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v0, " height="

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    const-string v0, "mText=NULL"

    .line 131
    .line 132
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :cond_1
    :goto_0
    const-string v0, "View"

    .line 137
    .line 138
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public deleteText_internal(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method public drawableStateChanged()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 35
    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 38
    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 46
    .line 47
    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    array-length v2, v1

    .line 50
    const/4 v3, 0x0

    .line 51
    :goto_0
    if-ge v3, v2, :cond_5

    .line 52
    .line 53
    aget-object v4, v1, v3

    .line 54
    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    return-void
.end method

.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    const-string/jumbo v2, "text:ellipsize"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "text:textSize"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v0, "text:scaledTextSize"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getScaledTextSize()F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v0, "text:typefaceStyle"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v0, "text:selectionStart"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v0, "text:selectionEnd"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v0, "text:curTextColor"

    .line 74
    .line 75
    .line 76
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 77
    .line 78
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 82
    .line 83
    if-nez v0, :cond_1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :goto_1
    const-string/jumbo v0, "text:text"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string/jumbo v0, "text:gravity"

    .line 97
    .line 98
    .line 99
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    and-int/lit8 p3, p3, 0x1

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    iget-object p3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 21
    .line 22
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-nez p3, :cond_0

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iget-object p3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 37
    .line 38
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeMinTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeStepGranularityInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoSizeTextType:I

    return v0
.end method

.method public getAutofillType()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBaseline()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaselineOffset()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, v0

    .line 22
    return v1
.end method

.method public getBaselineOffset()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x70

    .line 4
    .line 5
    const/16 v1, 0x30

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 29
    .line 30
    sub-int/2addr v0, v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    return v1
.end method

.method public getBottomPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v1, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getBreakStrategy()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    invoke-virtual {v0}, [Landroid/graphics/drawable/Drawable;->clone()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x4

    .line 15
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    aput-object v2, v0, v1

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    return-object v0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x3

    .line 7
    const/4 v5, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    aput-object v6, v3, v2

    .line 15
    .line 16
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    aget-object v6, v2, v5

    .line 19
    .line 20
    aput-object v6, v3, v5

    .line 21
    .line 22
    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    aput-object v0, v3, v1

    .line 25
    .line 26
    aget-object v0, v2, v4

    .line 27
    .line 28
    aput-object v0, v3, v4

    .line 29
    .line 30
    return-object v3

    .line 31
    :cond_0
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v3, v0, v2

    .line 35
    .line 36
    aput-object v3, v0, v5

    .line 37
    .line 38
    aput-object v3, v0, v1

    .line 39
    .line 40
    aput-object v3, v0, v4

    .line 41
    .line 42
    return-object v0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 14
    .line 15
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    return v1

    .line 22
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 23
    .line 24
    return v0
.end method

.method public getCompoundPaddingEnd()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 14
    .line 15
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    return v1

    .line 22
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 23
    .line 24
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    .line 14
    .line 15
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    return v1

    .line 22
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 23
    .line 24
    return v0
.end method

.method public getCompoundPaddingStart()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 14
    .line 15
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    return v1

    .line 22
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 23
    .line 24
    return v0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    :goto_0
    return v0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomInsertionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_0
    return-object v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    :goto_0
    return-object v0
.end method

.method public getDefaultEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Editable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/text/Editable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getEditorForTesting()Landroid/widget/Editor;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 25
    .line 26
    if-gt v0, v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    sub-int/2addr v2, v0

    .line 46
    sub-int/2addr v2, v1

    .line 47
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 48
    .line 49
    iget v3, p0, Landroid/widget/TextView;->mMaximum:I

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-lt v0, v2, :cond_3

    .line 56
    .line 57
    return v1

    .line 58
    :cond_3
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    .line 59
    .line 60
    and-int/lit8 v3, v3, 0x70

    .line 61
    .line 62
    const/16 v4, 0x30

    .line 63
    .line 64
    if-ne v3, v4, :cond_4

    .line 65
    .line 66
    add-int/2addr v1, v2

    .line 67
    sub-int/2addr v1, v0

    .line 68
    return v1

    .line 69
    :cond_4
    const/16 v4, 0x50

    .line 70
    .line 71
    if-ne v3, v4, :cond_5

    .line 72
    .line 73
    return v1

    .line 74
    :cond_5
    const/4 v3, 0x2

    .line 75
    invoke-static {v2, v0, v3, v1}, Landroid/app/m;->b(IIII)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    return v0
.end method

.method public getExtendedPaddingTop()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 25
    .line 26
    if-gt v0, v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    sub-int/2addr v2, v0

    .line 46
    sub-int/2addr v2, v1

    .line 47
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 48
    .line 49
    iget v3, p0, Landroid/widget/TextView;->mMaximum:I

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-lt v1, v2, :cond_3

    .line 56
    .line 57
    return v0

    .line 58
    :cond_3
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    .line 59
    .line 60
    and-int/lit8 v3, v3, 0x70

    .line 61
    .line 62
    const/16 v4, 0x30

    .line 63
    .line 64
    if-ne v3, v4, :cond_4

    .line 65
    .line 66
    return v0

    .line 67
    :cond_4
    const/16 v4, 0x50

    .line 68
    .line 69
    if-ne v3, v4, :cond_5

    .line 70
    .line 71
    add-int/2addr v0, v2

    .line 72
    sub-int/2addr v0, v1

    .line 73
    return v0

    .line 74
    :cond_5
    const/4 v3, 0x2

    .line 75
    invoke-static {v2, v1, v3, v0}, Landroid/app/m;->b(IIII)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    return v0
.end method

.method public getFadeHeight(Z)I
    .locals 0

    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFadeTop(Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

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
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x70

    .line 10
    .line 11
    const/16 v2, 0x30

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :cond_1
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/2addr v1, p1

    .line 27
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    add-int/2addr p1, v1

    .line 32
    return p1
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gez v0, :cond_1

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-ltz v1, :cond_6

    .line 25
    .line 26
    if-lt v1, v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 42
    .line 43
    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineTop(I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 50
    .line 51
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineBottom(I)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 56
    .line 57
    if-ne v3, v4, :cond_3

    .line 58
    .line 59
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 60
    .line 61
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    float-to-int v1, v1

    .line 66
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 67
    .line 68
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    float-to-int v0, v0

    .line 75
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 79
    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    iget-object v3, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 83
    .line 84
    if-nez v3, :cond_4

    .line 85
    .line 86
    new-instance v3, Landroid/graphics/Path;

    .line 87
    .line 88
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v3, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 92
    .line 93
    :cond_4
    iget-object v3, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 99
    .line 100
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 101
    .line 102
    invoke-virtual {v3, v1, v0, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 103
    .line 104
    .line 105
    iput-boolean v2, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 106
    .line 107
    :cond_5
    sget-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 108
    .line 109
    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 111
    .line 112
    const/4 v3, 0x1

    .line 113
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 114
    .line 115
    .line 116
    iget v0, v1, Landroid/graphics/RectF;->left:F

    .line 117
    .line 118
    float-to-int v0, v0

    .line 119
    sub-int/2addr v0, v3

    .line 120
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 121
    .line 122
    iget v0, v1, Landroid/graphics/RectF;->right:F

    .line 123
    .line 124
    float-to-int v0, v0

    .line 125
    add-int/2addr v0, v3

    .line 126
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 127
    .line 128
    monitor-exit v1

    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    throw p1

    .line 133
    :cond_6
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 140
    .line 141
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineTop(I)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 146
    .line 147
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 148
    .line 149
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 154
    .line 155
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    float-to-int v0, v0

    .line 162
    add-int/lit8 v0, v0, -0x2

    .line 163
    .line 164
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 165
    .line 166
    add-int/lit8 v0, v0, 0x4

    .line 167
    .line 168
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 169
    .line 170
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    .line 179
    .line 180
    and-int/lit8 v3, v3, 0x70

    .line 181
    .line 182
    const/16 v4, 0x30

    .line 183
    .line 184
    if-eq v3, v4, :cond_7

    .line 185
    .line 186
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    add-int/2addr v1, v2

    .line 191
    :cond_7
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 199
    .line 200
    add-int/2addr v1, v0

    .line 201
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 202
    .line 203
    return-void
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintLayout()Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    return v0
.end method

.method public getImeActionId()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImeHintLocales()Landroid/os/LocaleList;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_1
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    .line 13
    .line 14
    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 13
    .line 14
    iget-object v2, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 15
    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 25
    .line 26
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 27
    .line 28
    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 29
    .line 30
    if-nez v2, :cond_4

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_3
    new-instance p1, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 41
    .line 42
    :cond_4
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 43
    .line 44
    iget-object p1, p1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 45
    .line 46
    iget-object p1, p1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 47
    .line 48
    return-object p1
.end method

.method public getInputType()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    :goto_0
    return v0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/text/Spannable;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/text/Spannable;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method public getJustificationMode()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mJustificationMode:I

    return v0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :goto_0
    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public getLeftFadingEdgeStrength()F
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getScroll()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0

    .line 35
    :cond_0
    return v1

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x1

    .line 41
    if-ne v0, v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 53
    .line 54
    int-to-float v3, v2

    .line 55
    cmpl-float v3, v0, v3

    .line 56
    .line 57
    if-lez v3, :cond_2

    .line 58
    .line 59
    return v1

    .line 60
    :cond_2
    int-to-float v1, v2

    .line 61
    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    return v0

    .line 66
    :cond_3
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    return v0
.end method

.method public getLeftPaddingOffset()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    iget v1, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 9
    .line 10
    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 11
    .line 12
    sub-float/2addr v1, v2

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    float-to-int v1, v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public getLetterSpacing()F
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method public getLineAtCoordinate(F)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    sub-float/2addr p1, v0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    add-float/2addr p1, v0

    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    float-to-int p1, p1

    .line 39
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1
.end method

.method public getLineAtCoordinateUnclamped(F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    sub-float/2addr p1, v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    add-float/2addr p1, v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    float-to-int p1, p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return p1

    .line 12
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    .line 21
    .line 22
    and-int/lit8 v1, v1, 0x70

    .line 23
    .line 24
    const/16 v2, 0x30

    .line 25
    .line 26
    if-eq v1, v2, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_2
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 41
    .line 42
    .line 43
    :cond_3
    add-int/2addr p1, v0

    .line 44
    return p1
.end method

.method public getLineCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLineHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMaxLines()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinEms()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinHeight()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinLines()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinWidth()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffsetAtCoordinate(IF)I
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getOffsetForPosition(FF)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRightFadingEdgeStrength()F
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getScroll()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    sub-int/2addr v1, v2

    .line 50
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    sub-int/2addr v1, v2

    .line 55
    add-int/2addr v1, v0

    .line 56
    int-to-float v0, v1

    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineRight(I)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    cmpg-float v2, v1, v0

    .line 67
    .line 68
    if-gez v2, :cond_1

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    return v0

    .line 72
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    return v0

    .line 77
    :cond_2
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    return v0
.end method

.method public getRightPaddingOffset()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    neg-int v0, v0

    .line 9
    iget v1, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 10
    .line 11
    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 12
    .line 13
    add-float/2addr v1, v2

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    float-to-int v1, v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public getScaledTextSize()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 20
    .line 21
    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    .line 25
    .line 26
    iput-object v0, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 29
    .line 30
    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    .line 17
    .line 18
    and-int/lit8 v0, v0, 0xf

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    if-ne v0, v3, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/format/b;->g(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/method/a;->w(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    aget-object v0, v0, v1

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eq v0, v2, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-ne v0, v2, :cond_4

    .line 62
    .line 63
    move v1, v2

    .line 64
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    packed-switch v0, :pswitch_data_0

    .line 69
    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :pswitch_0
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 77
    .line 78
    return-object v0

    .line 79
    :pswitch_1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 80
    .line 81
    return-object v0

    .line 82
    :pswitch_2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    .line 83
    .line 84
    return-object v0

    .line 85
    :pswitch_3
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 86
    .line 87
    return-object v0

    .line 88
    :pswitch_4
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 89
    .line 90
    return-object v0

    .line 91
    :pswitch_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 95
    .line 96
    :goto_1
    return-object v0

    .line 97
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTopPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v1, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NORMAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BOLD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ITALIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "BOLD_ITALIC"
            .end subannotation
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/text/Spanned;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Landroid/text/Spanned;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-class v3, Landroid/text/style/URLSpan;

    .line 16
    .line 17
    invoke-interface {v1, v2, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, [Landroid/text/style/URLSpan;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-array v0, v2, [Landroid/text/style/URLSpan;

    .line 25
    .line 26
    return-object v0
.end method

.method public getVerticalOffset(Z)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x70

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    :cond_0
    const/16 p1, 0x30

    .line 23
    .line 24
    if-eq v0, p1, :cond_2

    .line 25
    .line 26
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ge v1, p1, :cond_2

    .line 35
    .line 36
    const/16 v2, 0x50

    .line 37
    .line 38
    if-ne v0, v2, :cond_1

    .line 39
    .line 40
    sub-int/2addr p1, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sub-int/2addr p1, v1

    .line 43
    shr-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 p1, 0x0

    .line 47
    :goto_0
    return p1
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return v2

    .line 36
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_4
    :goto_0
    return v1
.end method

.method public handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    sput-wide v0, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 12
    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 20
    .line 21
    .line 22
    :cond_2
    if-eqz v0, :cond_4

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 26
    .line 27
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 28
    .line 29
    if-gez v1, :cond_3

    .line 30
    .line 31
    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 32
    .line 33
    add-int v1, p2, p3

    .line 34
    .line 35
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 43
    .line 44
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 45
    .line 46
    add-int v2, p2, p3

    .line 47
    .line 48
    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 49
    .line 50
    sub-int/2addr v2, v3

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 56
    .line 57
    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 58
    .line 59
    sub-int v2, p4, p3

    .line 60
    .line 61
    add-int/2addr v2, v1

    .line 62
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 63
    .line 64
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 18
    .line 19
    instance-of v0, v0, Landroid/text/Spannable;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 39
    :goto_1
    return v0
.end method

.method public hasPasswordTransformationMethod()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method public hasSelection()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public invalidateCursor()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    return-void
.end method

.method public invalidateCursorPath()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 6
    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/2addr v2, v1

    .line 24
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 25
    .line 26
    iget v1, v1, Landroid/widget/Editor;->mCursorCount:I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    sget-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 32
    .line 33
    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    float-to-double v4, v4

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    double-to-float v4, v4

    .line 46
    const/high16 v5, 0x3f800000    # 1.0f

    .line 47
    .line 48
    cmpg-float v6, v4, v5

    .line 49
    .line 50
    if-gez v6, :cond_1

    .line 51
    .line 52
    move v4, v5

    .line 53
    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    .line 54
    .line 55
    div-float/2addr v4, v5

    .line 56
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 57
    .line 58
    invoke-virtual {v5, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 59
    .line 60
    .line 61
    int-to-float v0, v0

    .line 62
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 63
    .line 64
    add-float/2addr v3, v0

    .line 65
    sub-float/2addr v3, v4

    .line 66
    float-to-double v5, v3

    .line 67
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    double-to-int v3, v5

    .line 72
    int-to-float v2, v2

    .line 73
    iget v5, v1, Landroid/graphics/RectF;->top:F

    .line 74
    .line 75
    add-float/2addr v5, v2

    .line 76
    sub-float/2addr v5, v4

    .line 77
    float-to-double v5, v5

    .line 78
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    double-to-int v5, v5

    .line 83
    iget v6, v1, Landroid/graphics/RectF;->right:F

    .line 84
    .line 85
    add-float/2addr v0, v6

    .line 86
    add-float/2addr v0, v4

    .line 87
    float-to-double v6, v0

    .line 88
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    double-to-int v0, v6

    .line 93
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    .line 94
    .line 95
    add-float/2addr v2, v6

    .line 96
    add-float/2addr v2, v4

    .line 97
    float-to-double v6, v2

    .line 98
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    double-to-int v2, v6

    .line 103
    invoke-virtual {p0, v3, v5, v0, v2}, Landroid/view/View;->invalidate(IIII)V

    .line 104
    .line 105
    .line 106
    monitor-exit v1

    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    throw v0

    .line 111
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 112
    .line 113
    iget v4, v1, Landroid/widget/Editor;->mCursorCount:I

    .line 114
    .line 115
    if-ge v3, v4, :cond_3

    .line 116
    .line 117
    iget-object v1, v1, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    aget-object v1, v1, v3

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    add-int/2addr v4, v0

    .line 128
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 129
    .line 130
    add-int/2addr v5, v2

    .line 131
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 132
    .line 133
    add-int/2addr v6, v0

    .line 134
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 135
    .line 136
    add-int/2addr v1, v2

    .line 137
    invoke-virtual {p0, v4, v5, v6, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 138
    .line 139
    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    :goto_1
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 13
    .line 14
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 15
    .line 16
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 17
    .line 18
    if-eqz v4, :cond_3

    .line 19
    .line 20
    iget-object v5, v4, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    aget-object v6, v5, v1

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    const/4 v8, 0x2

    .line 26
    if-ne p1, v6, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget v6, p0, Landroid/view/View;->mBottom:I

    .line 37
    .line 38
    iget v9, p0, Landroid/view/View;->mTop:I

    .line 39
    .line 40
    sub-int/2addr v6, v9

    .line 41
    sub-int/2addr v6, v5

    .line 42
    sub-int/2addr v6, v1

    .line 43
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    .line 44
    .line 45
    add-int/2addr v2, v5

    .line 46
    iget v4, v4, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 47
    .line 48
    sub-int/2addr v6, v4

    .line 49
    div-int/2addr v6, v8

    .line 50
    :goto_0
    add-int/2addr v6, v1

    .line 51
    add-int/2addr v3, v6

    .line 52
    :goto_1
    move v1, v7

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    aget-object v6, v5, v8

    .line 55
    .line 56
    if-ne p1, v6, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    iget v6, p0, Landroid/view/View;->mBottom:I

    .line 67
    .line 68
    iget v9, p0, Landroid/view/View;->mTop:I

    .line 69
    .line 70
    sub-int/2addr v6, v9

    .line 71
    sub-int/2addr v6, v5

    .line 72
    sub-int/2addr v6, v1

    .line 73
    iget v5, p0, Landroid/view/View;->mRight:I

    .line 74
    .line 75
    iget v9, p0, Landroid/view/View;->mLeft:I

    .line 76
    .line 77
    sub-int/2addr v5, v9

    .line 78
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    .line 79
    .line 80
    sub-int/2addr v5, v9

    .line 81
    iget v9, v4, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 82
    .line 83
    sub-int/2addr v5, v9

    .line 84
    add-int/2addr v2, v5

    .line 85
    iget v4, v4, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 86
    .line 87
    sub-int/2addr v6, v4

    .line 88
    div-int/2addr v6, v8

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    aget-object v6, v5, v7

    .line 91
    .line 92
    if-ne p1, v6, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    iget v6, p0, Landroid/view/View;->mRight:I

    .line 103
    .line 104
    iget v9, p0, Landroid/view/View;->mLeft:I

    .line 105
    .line 106
    sub-int/2addr v6, v9

    .line 107
    sub-int/2addr v6, v5

    .line 108
    sub-int/2addr v6, v1

    .line 109
    iget v4, v4, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 110
    .line 111
    sub-int/2addr v6, v4

    .line 112
    div-int/2addr v6, v8

    .line 113
    add-int/2addr v6, v1

    .line 114
    add-int/2addr v2, v6

    .line 115
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 116
    .line 117
    add-int/2addr v3, v1

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    const/4 v6, 0x3

    .line 120
    aget-object v5, v5, v6

    .line 121
    .line 122
    if-ne p1, v5, :cond_3

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    iget v6, p0, Landroid/view/View;->mRight:I

    .line 133
    .line 134
    iget v9, p0, Landroid/view/View;->mLeft:I

    .line 135
    .line 136
    sub-int/2addr v6, v9

    .line 137
    sub-int/2addr v6, v5

    .line 138
    sub-int/2addr v6, v1

    .line 139
    iget v5, v4, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    .line 140
    .line 141
    sub-int/2addr v6, v5

    .line 142
    div-int/2addr v6, v8

    .line 143
    add-int/2addr v6, v1

    .line 144
    add-int/2addr v2, v6

    .line 145
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 146
    .line 147
    iget v5, p0, Landroid/view/View;->mTop:I

    .line 148
    .line 149
    sub-int/2addr v1, v5

    .line 150
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    .line 151
    .line 152
    sub-int/2addr v1, v5

    .line 153
    iget v4, v4, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 154
    .line 155
    sub-int/2addr v1, v4

    .line 156
    add-int/2addr v3, v1

    .line 157
    goto :goto_1

    .line 158
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 159
    .line 160
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 161
    .line 162
    add-int/2addr v4, v2

    .line 163
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 164
    .line 165
    add-int/2addr v5, v3

    .line 166
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 167
    .line 168
    add-int/2addr v6, v2

    .line 169
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 170
    .line 171
    add-int/2addr v0, v3

    .line 172
    invoke-virtual {p0, v4, v5, v6, v0}, Landroid/view/View;->invalidate(IIII)V

    .line 173
    .line 174
    .line 175
    :cond_4
    if-nez v1, :cond_5

    .line 176
    .line 177
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    return-void
.end method

.method public invalidateRegion(IIZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineTop(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 23
    .line 24
    add-int/lit8 v3, v0, -0x1

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineDescent(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sub-int/2addr v1, v2

    .line 31
    :cond_1
    if-ne p1, p2, :cond_2

    .line 32
    .line 33
    move v2, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 36
    .line 37
    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineBottom(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz p3, :cond_3

    .line 48
    .line 49
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 55
    .line 56
    iget v6, v5, Landroid/widget/Editor;->mCursorCount:I

    .line 57
    .line 58
    if-ge v4, v6, :cond_3

    .line 59
    .line 60
    iget-object v5, v5, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    aget-object v5, v5, v4

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 75
    .line 76
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const/4 v6, 0x1

    .line 92
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    add-int/2addr v6, v5

    .line 97
    if-ne v0, v2, :cond_4

    .line 98
    .line 99
    if-nez p3, :cond_4

    .line 100
    .line 101
    iget-object p3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 102
    .line 103
    invoke-virtual {p3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    float-to-int p1, p1

    .line 108
    iget-object p3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 109
    .line 110
    invoke-virtual {p3, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    float-to-double p2, p2

    .line 115
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 116
    .line 117
    add-double/2addr p2, v7

    .line 118
    double-to-int p2, p2

    .line 119
    add-int/2addr p1, v4

    .line 120
    add-int/2addr p2, v4

    .line 121
    move v4, p1

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    sub-int p2, p1, p2

    .line 132
    .line 133
    :goto_2
    iget p1, p0, Landroid/view/View;->mScrollX:I

    .line 134
    .line 135
    add-int/2addr v4, p1

    .line 136
    add-int/2addr v1, v6

    .line 137
    add-int/2addr p1, p2

    .line 138
    add-int/2addr v6, v3

    .line 139
    invoke-virtual {p0, v4, v1, p1, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 140
    .line 141
    .line 142
    :goto_3
    return-void
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    :goto_0
    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v4, "device_provisioned"

    .line 15
    .line 16
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move v0, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    :goto_0
    iput v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    .line 26
    .line 27
    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    .line 28
    .line 29
    if-ne v0, v3, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move v1, v2

    .line 33
    :goto_1
    return v1
.end method

.method public isInBatchEditMode()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

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
    iget-object v2, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    iget v0, v2, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_1
    return v1

    .line 17
    :cond_2
    iget-boolean v0, v0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 18
    .line 19
    return v0
.end method

.method public isInExtractedMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public isPaddingOffsetRequired()Z
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPositionVisible(FF)Z
    .locals 5

    .line 1
    sget-object v0, Landroid/widget/TextView;->TEMP_POSITION:[F

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    aput p1, v0, v1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    aput p2, v0, p1

    .line 9
    .line 10
    move-object p2, p0

    .line 11
    :goto_0
    if-eqz p2, :cond_5

    .line 12
    .line 13
    if-eq p2, p0, :cond_0

    .line 14
    .line 15
    aget v2, v0, v1

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-float v3, v3

    .line 22
    sub-float/2addr v2, v3

    .line 23
    aput v2, v0, v1

    .line 24
    .line 25
    aget v2, v0, p1

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    int-to-float v3, v3

    .line 32
    sub-float/2addr v2, v3

    .line 33
    aput v2, v0, p1

    .line 34
    .line 35
    :cond_0
    aget v2, v0, v1

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    cmpg-float v4, v2, v3

    .line 39
    .line 40
    if-ltz v4, :cond_4

    .line 41
    .line 42
    aget v4, v0, p1

    .line 43
    .line 44
    cmpg-float v3, v4, v3

    .line 45
    .line 46
    if-ltz v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    int-to-float v3, v3

    .line 53
    cmpl-float v2, v2, v3

    .line 54
    .line 55
    if-gtz v2, :cond_4

    .line 56
    .line 57
    aget v2, v0, p1

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    int-to-float v3, v3

    .line 64
    cmpl-float v2, v2, v3

    .line 65
    .line 66
    if-lez v2, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 84
    .line 85
    .line 86
    :cond_2
    aget v2, v0, v1

    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    int-to-float v3, v3

    .line 93
    add-float/2addr v2, v3

    .line 94
    aput v2, v0, v1

    .line 95
    .line 96
    aget v2, v0, p1

    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    int-to-float v3, v3

    .line 103
    add-float/2addr v2, v3

    .line 104
    aput v2, v0, p1

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    instance-of v2, p2, Landroid/view/View;

    .line 111
    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    check-cast p2, Landroid/view/View;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    const/4 p2, 0x0

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    :goto_1
    monitor-exit v0

    .line 120
    return v1

    .line 121
    :cond_5
    monitor-exit v0

    .line 122
    return p1

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p1
.end method

.method isSingleLine()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

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
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    .line 8
    .line 9
    and-int/lit8 v2, v0, 0xf

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v2, v3, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    const/high16 v2, 0x80000

    .line 16
    .line 17
    and-int/2addr v2, v0

    .line 18
    if-lez v2, :cond_2

    .line 19
    .line 20
    return v1

    .line 21
    :cond_2
    and-int/lit16 v0, v0, 0xff0

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    const/16 v2, 0x30

    .line 26
    .line 27
    if-eq v0, v2, :cond_3

    .line 28
    .line 29
    const/16 v2, 0x50

    .line 30
    .line 31
    if-eq v0, v2, :cond_3

    .line 32
    .line 33
    const/16 v2, 0x40

    .line 34
    .line 35
    if-eq v0, v2, :cond_3

    .line 36
    .line 37
    const/16 v2, 0xa0

    .line 38
    .line 39
    if-ne v0, v2, :cond_4

    .line 40
    .line 41
    :cond_3
    move v1, v3

    .line 42
    :cond_4
    return v1
.end method

.method public isTextEditable()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTextSelectable()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    :goto_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 28

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v15, p5

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 6
    .line 7
    .line 8
    iget v0, v8, Landroid/widget/TextView;->mMaximum:I

    .line 9
    .line 10
    iput v0, v8, Landroid/widget/TextView;->mOldMaximum:I

    .line 11
    .line 12
    iget v0, v8, Landroid/widget/TextView;->mMaxMode:I

    .line 13
    .line 14
    iput v0, v8, Landroid/widget/TextView;->mOldMaxMode:I

    .line 15
    .line 16
    const/4 v14, 0x1

    .line 17
    iput-boolean v14, v8, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 18
    .line 19
    const/4 v13, 0x0

    .line 20
    if-gez p1, :cond_0

    .line 21
    .line 22
    move v9, v13

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move/from16 v9, p1

    .line 25
    .line 26
    :goto_0
    if-gez p2, :cond_1

    .line 27
    .line 28
    move v10, v13

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move/from16 v10, p2

    .line 31
    .line 32
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    .line 33
    .line 34
    .line 35
    move-result-object v12

    .line 36
    iget-boolean v0, v8, Landroid/widget/TextView;->mSingleLine:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v0, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 45
    .line 46
    if-eq v12, v0, :cond_2

    .line 47
    .line 48
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 49
    .line 50
    if-ne v12, v0, :cond_3

    .line 51
    .line 52
    :cond_2
    move/from16 v25, v14

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move/from16 v25, v13

    .line 56
    .line 57
    :goto_2
    if-eqz v25, :cond_4

    .line 58
    .line 59
    iget-object v0, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 60
    .line 61
    invoke-virtual {v0, v13}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    move v11, v0

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    move v11, v13

    .line 68
    :goto_3
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    move/from16 v16, v14

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_5
    move/from16 v16, v13

    .line 82
    .line 83
    :goto_4
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 84
    .line 85
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 86
    .line 87
    if-ne v0, v7, :cond_6

    .line 88
    .line 89
    iget v1, v8, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 90
    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    move/from16 v17, v14

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_6
    move/from16 v17, v13

    .line 97
    .line 98
    :goto_5
    if-ne v0, v7, :cond_7

    .line 99
    .line 100
    iget v1, v8, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 101
    .line 102
    if-ne v1, v14, :cond_7

    .line 103
    .line 104
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 105
    .line 106
    :cond_7
    move-object v6, v0

    .line 107
    iget-object v0, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 108
    .line 109
    if-nez v0, :cond_8

    .line 110
    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 116
    .line 117
    :cond_8
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 118
    .line 119
    if-ne v6, v0, :cond_9

    .line 120
    .line 121
    move/from16 v18, v14

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_9
    move/from16 v18, v13

    .line 125
    .line 126
    :goto_6
    move-object/from16 v0, p0

    .line 127
    .line 128
    move v1, v9

    .line 129
    move-object/from16 v2, p3

    .line 130
    .line 131
    move/from16 v3, p5

    .line 132
    .line 133
    move-object v4, v12

    .line 134
    move/from16 v5, v16

    .line 135
    .line 136
    move-object/from16 p1, v6

    .line 137
    .line 138
    move-object v14, v7

    .line 139
    move/from16 v7, v18

    .line 140
    .line 141
    invoke-virtual/range {v0 .. v7}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iput-object v0, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 146
    .line 147
    if-eqz v17, :cond_c

    .line 148
    .line 149
    move-object/from16 v0, p1

    .line 150
    .line 151
    if-ne v0, v14, :cond_a

    .line 152
    .line 153
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 154
    .line 155
    move-object v6, v1

    .line 156
    goto :goto_7

    .line 157
    :cond_a
    move-object v6, v14

    .line 158
    :goto_7
    iget-object v1, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 159
    .line 160
    if-eq v0, v1, :cond_b

    .line 161
    .line 162
    const/4 v7, 0x1

    .line 163
    goto :goto_8

    .line 164
    :cond_b
    move v7, v13

    .line 165
    :goto_8
    move-object/from16 v0, p0

    .line 166
    .line 167
    move v1, v9

    .line 168
    move-object/from16 v2, p3

    .line 169
    .line 170
    move/from16 v3, p5

    .line 171
    .line 172
    move-object v4, v12

    .line 173
    move/from16 v5, v16

    .line 174
    .line 175
    invoke-virtual/range {v0 .. v7}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, v8, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 180
    .line 181
    :cond_c
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 182
    .line 183
    if-eqz v0, :cond_d

    .line 184
    .line 185
    const/16 v26, 0x1

    .line 186
    .line 187
    goto :goto_9

    .line 188
    :cond_d
    move/from16 v26, v13

    .line 189
    .line 190
    :goto_9
    const/4 v0, 0x0

    .line 191
    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 192
    .line 193
    iget-object v0, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 194
    .line 195
    if-eqz v0, :cond_18

    .line 196
    .line 197
    if-eqz v26, :cond_e

    .line 198
    .line 199
    move v10, v9

    .line 200
    :cond_e
    sget-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 201
    .line 202
    move-object/from16 v2, p4

    .line 203
    .line 204
    if-ne v2, v1, :cond_10

    .line 205
    .line 206
    iget-object v1, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 207
    .line 208
    iget-object v2, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 209
    .line 210
    iget-object v3, v8, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 211
    .line 212
    invoke-static {v0, v1, v2, v3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_f

    .line 217
    .line 218
    iput-object v0, v8, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 219
    .line 220
    :cond_f
    move-object v6, v0

    .line 221
    goto :goto_a

    .line 222
    :cond_10
    move-object v6, v2

    .line 223
    :goto_a
    if-eqz v6, :cond_15

    .line 224
    .line 225
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    .line 226
    .line 227
    if-gt v0, v10, :cond_13

    .line 228
    .line 229
    if-eqz v26, :cond_11

    .line 230
    .line 231
    if-gt v0, v15, :cond_13

    .line 232
    .line 233
    :cond_11
    iget-object v0, v8, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 234
    .line 235
    if-eqz v0, :cond_12

    .line 236
    .line 237
    iget-object v1, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 238
    .line 239
    iget-object v2, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 240
    .line 241
    iget v3, v8, Landroid/widget/TextView;->mSpacingMult:F

    .line 242
    .line 243
    iget v4, v8, Landroid/widget/TextView;->mSpacingAdd:F

    .line 244
    .line 245
    iget-boolean v5, v8, Landroid/widget/TextView;->mIncludePad:Z

    .line 246
    .line 247
    move-object/from16 v16, v0

    .line 248
    .line 249
    move-object/from16 v17, v1

    .line 250
    .line 251
    move-object/from16 v18, v2

    .line 252
    .line 253
    move/from16 v19, v10

    .line 254
    .line 255
    move-object/from16 v20, v12

    .line 256
    .line 257
    move/from16 v21, v3

    .line 258
    .line 259
    move/from16 v22, v4

    .line 260
    .line 261
    move-object/from16 v23, v6

    .line 262
    .line 263
    move/from16 v24, v5

    .line 264
    .line 265
    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_12
    iget-object v0, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 273
    .line 274
    iget-object v1, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 275
    .line 276
    iget v4, v8, Landroid/widget/TextView;->mSpacingMult:F

    .line 277
    .line 278
    iget v5, v8, Landroid/widget/TextView;->mSpacingAdd:F

    .line 279
    .line 280
    iget-boolean v7, v8, Landroid/widget/TextView;->mIncludePad:Z

    .line 281
    .line 282
    move v2, v10

    .line 283
    move-object v3, v12

    .line 284
    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 289
    .line 290
    :goto_b
    iget-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 291
    .line 292
    check-cast v0, Landroid/text/BoringLayout;

    .line 293
    .line 294
    iput-object v0, v8, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 295
    .line 296
    goto/16 :goto_c

    .line 297
    .line 298
    :cond_13
    if-eqz v26, :cond_15

    .line 299
    .line 300
    if-gt v0, v10, :cond_15

    .line 301
    .line 302
    iget-object v9, v8, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 303
    .line 304
    if-eqz v9, :cond_14

    .line 305
    .line 306
    iget-object v0, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 307
    .line 308
    iget-object v1, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 309
    .line 310
    iget v2, v8, Landroid/widget/TextView;->mSpacingMult:F

    .line 311
    .line 312
    iget v3, v8, Landroid/widget/TextView;->mSpacingAdd:F

    .line 313
    .line 314
    iget-boolean v4, v8, Landroid/widget/TextView;->mIncludePad:Z

    .line 315
    .line 316
    iget-object v5, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 317
    .line 318
    move v7, v10

    .line 319
    move-object v10, v0

    .line 320
    move v0, v11

    .line 321
    move-object v11, v1

    .line 322
    move-object v1, v12

    .line 323
    move v12, v7

    .line 324
    move/from16 v20, v0

    .line 325
    .line 326
    move v0, v13

    .line 327
    move-object v13, v1

    .line 328
    move-object/from16 v27, v14

    .line 329
    .line 330
    move v14, v2

    .line 331
    move v2, v15

    .line 332
    move v15, v3

    .line 333
    move-object/from16 v16, v6

    .line 334
    .line 335
    move/from16 v17, v4

    .line 336
    .line 337
    move-object/from16 v18, v5

    .line 338
    .line 339
    move/from16 v19, p5

    .line 340
    .line 341
    invoke-virtual/range {v9 .. v19}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    iput-object v3, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 346
    .line 347
    goto :goto_d

    .line 348
    :cond_14
    move v7, v10

    .line 349
    move/from16 v20, v11

    .line 350
    .line 351
    move-object v1, v12

    .line 352
    move v0, v13

    .line 353
    move-object/from16 v27, v14

    .line 354
    .line 355
    move v2, v15

    .line 356
    iget-object v9, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 357
    .line 358
    iget-object v10, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 359
    .line 360
    iget v13, v8, Landroid/widget/TextView;->mSpacingMult:F

    .line 361
    .line 362
    iget v14, v8, Landroid/widget/TextView;->mSpacingAdd:F

    .line 363
    .line 364
    iget-boolean v3, v8, Landroid/widget/TextView;->mIncludePad:Z

    .line 365
    .line 366
    iget-object v4, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 367
    .line 368
    move v11, v7

    .line 369
    move-object v15, v6

    .line 370
    move/from16 v16, v3

    .line 371
    .line 372
    move-object/from16 v17, v4

    .line 373
    .line 374
    move/from16 v18, p5

    .line 375
    .line 376
    invoke-static/range {v9 .. v18}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    iput-object v3, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 381
    .line 382
    goto :goto_d

    .line 383
    :cond_15
    :goto_c
    move v7, v10

    .line 384
    move/from16 v20, v11

    .line 385
    .line 386
    move-object v1, v12

    .line 387
    move v0, v13

    .line 388
    move-object/from16 v27, v14

    .line 389
    .line 390
    move v2, v15

    .line 391
    :goto_d
    iget-object v3, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 392
    .line 393
    if-nez v3, :cond_19

    .line 394
    .line 395
    iget-object v3, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 396
    .line 397
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    iget-object v5, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 402
    .line 403
    invoke-static {v3, v0, v4, v5, v7}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-virtual {v3, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    iget-object v3, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 412
    .line 413
    invoke-virtual {v1, v3}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    iget v3, v8, Landroid/widget/TextView;->mSpacingAdd:F

    .line 418
    .line 419
    iget v4, v8, Landroid/widget/TextView;->mSpacingMult:F

    .line 420
    .line 421
    invoke-virtual {v1, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    iget-boolean v3, v8, Landroid/widget/TextView;->mIncludePad:Z

    .line 426
    .line 427
    invoke-virtual {v1, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    iget v3, v8, Landroid/widget/TextView;->mBreakStrategy:I

    .line 432
    .line 433
    invoke-virtual {v1, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    iget v3, v8, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 438
    .line 439
    invoke-virtual {v1, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    iget v3, v8, Landroid/widget/TextView;->mJustificationMode:I

    .line 444
    .line 445
    invoke-virtual {v1, v3}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    iget v3, v8, Landroid/widget/TextView;->mMaxMode:I

    .line 450
    .line 451
    const/4 v4, 0x1

    .line 452
    if-ne v3, v4, :cond_16

    .line 453
    .line 454
    iget v3, v8, Landroid/widget/TextView;->mMaximum:I

    .line 455
    .line 456
    goto :goto_e

    .line 457
    :cond_16
    const v3, 0x7fffffff

    .line 458
    .line 459
    .line 460
    :goto_e
    invoke-virtual {v1, v3}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    if-eqz v26, :cond_17

    .line 465
    .line 466
    iget-object v3, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 467
    .line 468
    invoke-virtual {v1, v3}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    invoke-virtual {v3, v2}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 473
    .line 474
    .line 475
    :cond_17
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    iput-object v1, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 480
    .line 481
    goto :goto_f

    .line 482
    :cond_18
    move/from16 v20, v11

    .line 483
    .line 484
    move v0, v13

    .line 485
    move-object/from16 v27, v14

    .line 486
    .line 487
    move v2, v15

    .line 488
    :cond_19
    const/4 v4, 0x1

    .line 489
    :goto_f
    if-nez p6, :cond_1a

    .line 490
    .line 491
    if-eqz v25, :cond_1b

    .line 492
    .line 493
    iget-object v1, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 494
    .line 495
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    move/from16 v13, v20

    .line 500
    .line 501
    if-eq v13, v0, :cond_1b

    .line 502
    .line 503
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 504
    .line 505
    .line 506
    :cond_1b
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 507
    .line 508
    move-object/from16 v1, v27

    .line 509
    .line 510
    if-ne v0, v1, :cond_1d

    .line 511
    .line 512
    int-to-float v0, v2

    .line 513
    invoke-direct {v8, v0}, Landroid/widget/TextView;->compressText(F)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-nez v0, :cond_1d

    .line 518
    .line 519
    iget-object v0, v8, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 520
    .line 521
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 522
    .line 523
    const/4 v1, -0x2

    .line 524
    if-eq v0, v1, :cond_1c

    .line 525
    .line 526
    const/4 v1, -0x1

    .line 527
    if-eq v0, v1, :cond_1c

    .line 528
    .line 529
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 530
    .line 531
    .line 532
    goto :goto_10

    .line 533
    :cond_1c
    iput-boolean v4, v8, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 534
    .line 535
    :cond_1d
    :goto_10
    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 536
    .line 537
    if-eqz v0, :cond_1e

    .line 538
    .line 539
    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 540
    .line 541
    .line 542
    :cond_1e
    return-void
.end method

.method public makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v15, p1

    .line 4
    .line 5
    move/from16 v14, p3

    .line 6
    .line 7
    move-object/from16 v13, p6

    .line 8
    .line 9
    iget-object v1, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 10
    .line 11
    instance-of v1, v1, Landroid/text/Spannable;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance v16, Landroid/text/DynamicLayout;

    .line 17
    .line 18
    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 19
    .line 20
    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 21
    .line 22
    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 23
    .line 24
    iget-object v7, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 25
    .line 26
    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 27
    .line 28
    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 29
    .line 30
    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 31
    .line 32
    iget v11, v0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 33
    .line 34
    iget v12, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 35
    .line 36
    iget v6, v0, Landroid/widget/TextView;->mJustificationMode:I

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    move-object/from16 v17, v13

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object/from16 v17, v2

    .line 48
    .line 49
    :goto_0
    move-object/from16 v1, v16

    .line 50
    .line 51
    move-object v2, v3

    .line 52
    move-object v3, v4

    .line 53
    move-object v4, v5

    .line 54
    move/from16 v5, p1

    .line 55
    .line 56
    move/from16 v18, v6

    .line 57
    .line 58
    move-object/from16 v6, p4

    .line 59
    .line 60
    move/from16 v13, v18

    .line 61
    .line 62
    move-object/from16 v14, v17

    .line 63
    .line 64
    move/from16 v15, p3

    .line 65
    .line 66
    invoke-direct/range {v1 .. v15}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/text/TextUtils$TruncateAt;I)V

    .line 67
    .line 68
    .line 69
    move/from16 v12, p1

    .line 70
    .line 71
    move/from16 v14, p3

    .line 72
    .line 73
    move-object/from16 v13, p6

    .line 74
    .line 75
    move-object/from16 v2, v16

    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_1
    sget-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 80
    .line 81
    move-object/from16 v3, p2

    .line 82
    .line 83
    if-ne v3, v1, :cond_3

    .line 84
    .line 85
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 86
    .line 87
    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 88
    .line 89
    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 90
    .line 91
    iget-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 92
    .line 93
    invoke-static {v1, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    iput-object v1, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 100
    .line 101
    :cond_2
    move-object v8, v1

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    move-object v8, v3

    .line 104
    :goto_1
    if-eqz v8, :cond_9

    .line 105
    .line 106
    iget v1, v8, Landroid/text/BoringLayout$Metrics;->width:I

    .line 107
    .line 108
    move/from16 v12, p1

    .line 109
    .line 110
    if-gt v1, v12, :cond_6

    .line 111
    .line 112
    move-object/from16 v13, p6

    .line 113
    .line 114
    move/from16 v14, p3

    .line 115
    .line 116
    if-eqz v13, :cond_4

    .line 117
    .line 118
    if-gt v1, v14, :cond_7

    .line 119
    .line 120
    :cond_4
    if-eqz p7, :cond_5

    .line 121
    .line 122
    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 123
    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 127
    .line 128
    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 129
    .line 130
    iget v6, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 131
    .line 132
    iget v7, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 133
    .line 134
    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 135
    .line 136
    move/from16 v4, p1

    .line 137
    .line 138
    move-object/from16 v5, p4

    .line 139
    .line 140
    invoke-virtual/range {v1 .. v9}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 146
    .line 147
    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 148
    .line 149
    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 150
    .line 151
    iget v6, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 152
    .line 153
    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 154
    .line 155
    move/from16 v3, p1

    .line 156
    .line 157
    move-object/from16 v4, p4

    .line 158
    .line 159
    move-object v7, v8

    .line 160
    move v8, v9

    .line 161
    invoke-static/range {v1 .. v8}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    :goto_2
    move-object v2, v1

    .line 166
    if-eqz p7, :cond_a

    .line 167
    .line 168
    iput-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    move/from16 v14, p3

    .line 172
    .line 173
    move-object/from16 v13, p6

    .line 174
    .line 175
    :cond_7
    if-eqz p5, :cond_a

    .line 176
    .line 177
    if-gt v1, v12, :cond_a

    .line 178
    .line 179
    if-eqz p7, :cond_8

    .line 180
    .line 181
    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 182
    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 186
    .line 187
    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 188
    .line 189
    iget v6, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 190
    .line 191
    iget v7, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 192
    .line 193
    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 194
    .line 195
    move/from16 v4, p1

    .line 196
    .line 197
    move-object/from16 v5, p4

    .line 198
    .line 199
    move-object/from16 v10, p6

    .line 200
    .line 201
    move/from16 v11, p3

    .line 202
    .line 203
    invoke-virtual/range {v1 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    goto :goto_3

    .line 208
    :cond_8
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 209
    .line 210
    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 211
    .line 212
    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 213
    .line 214
    iget v6, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 215
    .line 216
    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 217
    .line 218
    move/from16 v3, p1

    .line 219
    .line 220
    move-object/from16 v4, p4

    .line 221
    .line 222
    move-object v7, v8

    .line 223
    move v8, v9

    .line 224
    move-object/from16 v9, p6

    .line 225
    .line 226
    move/from16 v10, p3

    .line 227
    .line 228
    invoke-static/range {v1 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    goto :goto_3

    .line 233
    :cond_9
    move/from16 v12, p1

    .line 234
    .line 235
    move/from16 v14, p3

    .line 236
    .line 237
    move-object/from16 v13, p6

    .line 238
    .line 239
    :cond_a
    :goto_3
    if-nez v2, :cond_d

    .line 240
    .line 241
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 242
    .line 243
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 248
    .line 249
    const/4 v4, 0x0

    .line 250
    invoke-static {v1, v4, v2, v3, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    move-object/from16 v2, p4

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 261
    .line 262
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    iget v2, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 267
    .line 268
    iget v3, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 269
    .line 270
    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    iget-boolean v2, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 275
    .line 276
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iget v2, v0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iget v2, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    iget v2, v0, Landroid/widget/TextView;->mJustificationMode:I

    .line 293
    .line 294
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    .line 299
    .line 300
    const/4 v3, 0x1

    .line 301
    if-ne v2, v3, :cond_b

    .line 302
    .line 303
    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_b
    const v2, 0x7fffffff

    .line 307
    .line 308
    .line 309
    :goto_4
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    if-eqz p5, :cond_c

    .line 314
    .line 315
    invoke-virtual {v1, v13}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {v2, v14}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 320
    .line 321
    .line 322
    :cond_c
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    :cond_d
    return-object v2
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/text/Spannable;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineTop(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 33
    .line 34
    add-int/lit8 v5, v2, 0x1

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget v5, p0, Landroid/view/View;->mBottom:I

    .line 41
    .line 42
    iget v6, p0, Landroid/view/View;->mTop:I

    .line 43
    .line 44
    sub-int/2addr v5, v6

    .line 45
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    sub-int/2addr v5, v6

    .line 50
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    sub-int/2addr v5, v6

    .line 55
    sub-int v6, v4, v3

    .line 56
    .line 57
    div-int/lit8 v7, v6, 0x2

    .line 58
    .line 59
    div-int/lit8 v8, v5, 0x4

    .line 60
    .line 61
    if-le v7, v8, :cond_2

    .line 62
    .line 63
    move v7, v8

    .line 64
    :cond_2
    iget v8, p0, Landroid/view/View;->mScrollY:I

    .line 65
    .line 66
    add-int v9, v8, v7

    .line 67
    .line 68
    if-ge v3, v9, :cond_3

    .line 69
    .line 70
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 71
    .line 72
    add-int/2addr v9, v6

    .line 73
    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    add-int/2addr v5, v8

    .line 79
    sub-int/2addr v5, v7

    .line 80
    if-le v4, v5, :cond_4

    .line 81
    .line 82
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 83
    .line 84
    sub-int/2addr v5, v6

    .line 85
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :cond_4
    :goto_0
    iget v3, p0, Landroid/view/View;->mRight:I

    .line 90
    .line 91
    iget v4, p0, Landroid/view/View;->mLeft:I

    .line 92
    .line 93
    sub-int/2addr v3, v4

    .line 94
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    sub-int/2addr v3, v4

    .line 99
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    sub-int/2addr v3, v4

    .line 104
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 105
    .line 106
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 107
    .line 108
    int-to-float v6, v4

    .line 109
    invoke-virtual {v5, v2, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 114
    .line 115
    add-int/2addr v3, v4

    .line 116
    int-to-float v3, v3

    .line 117
    invoke-virtual {v6, v2, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-ge v5, v2, :cond_5

    .line 122
    .line 123
    move v3, v5

    .line 124
    goto :goto_1

    .line 125
    :cond_5
    move v3, v2

    .line 126
    :goto_1
    if-le v5, v2, :cond_6

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    move v5, v2

    .line 130
    :goto_2
    if-ge v0, v3, :cond_7

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    if-le v0, v5, :cond_8

    .line 134
    .line 135
    move v3, v5

    .line 136
    goto :goto_3

    .line 137
    :cond_8
    move v3, v0

    .line 138
    :goto_3
    if-eq v3, v0, :cond_9

    .line 139
    .line 140
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 141
    .line 142
    check-cast v0, Landroid/text/Spannable;

    .line 143
    .line 144
    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 145
    .line 146
    .line 147
    const/4 v0, 0x1

    .line 148
    return v0

    .line 149
    :cond_9
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    if-ne p2, p1, :cond_1

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const-string p1, "android.intent.extra.PROCESS_TEXT"

    .line 11
    .line 12
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->replaceSelectionWithText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-lez p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 p3, 0x1

    .line 50
    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 59
    .line 60
    instance-of p2, p1, Landroid/text/Spannable;

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    check-cast p1, Landroid/text/Spannable;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    array-length v0, p1

    .line 28
    const/4 v1, 0x0

    .line 29
    move v2, v1

    .line 30
    :goto_1
    if-ge v2, v0, :cond_2

    .line 31
    .line 32
    aget v3, p1, v2

    .line 33
    .line 34
    const v4, 0x10100a7

    .line 35
    .line 36
    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    add-int/lit8 v3, v0, -0x1

    .line 40
    .line 41
    new-array v3, v3, [I

    .line 42
    .line 43
    invoke-static {p1, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v2, 0x1

    .line 47
    .line 48
    sub-int/2addr v0, v2

    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 52
    .line 53
    .line 54
    return-object v3

    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    return-object p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 24
    .line 25
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 26
    .line 27
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget v2, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    .line 32
    .line 33
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 34
    .line 35
    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 40
    .line 41
    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 42
    .line 43
    iget v2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    .line 44
    .line 45
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 46
    .line 47
    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 48
    .line 49
    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 50
    .line 51
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    .line 52
    .line 53
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 58
    .line 59
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 60
    .line 61
    :goto_0
    const/16 v0, 0x82

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/high16 v2, 0x8000000

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 72
    .line 73
    or-int/2addr v0, v2

    .line 74
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 75
    .line 76
    :cond_1
    const/16 v0, 0x21

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 85
    .line 86
    const/high16 v3, 0x4000000

    .line 87
    .line 88
    or-int/2addr v0, v3

    .line 89
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 90
    .line 91
    :cond_2
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 92
    .line 93
    and-int/lit16 v3, v0, 0xff

    .line 94
    .line 95
    const/high16 v4, 0x40000000    # 2.0f

    .line 96
    .line 97
    if-nez v3, :cond_4

    .line 98
    .line 99
    and-int/2addr v2, v0

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    or-int/lit8 v0, v0, 0x5

    .line 103
    .line 104
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    or-int/lit8 v0, v0, 0x6

    .line 108
    .line 109
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 110
    .line 111
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_4

    .line 116
    .line 117
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 118
    .line 119
    or-int/2addr v0, v4

    .line 120
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 121
    .line 122
    :cond_4
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 123
    .line 124
    invoke-static {v0}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 131
    .line 132
    or-int/2addr v0, v4

    .line 133
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 134
    .line 135
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 136
    .line 137
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 138
    .line 139
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 140
    .line 141
    instance-of v0, v0, Landroid/text/Editable;

    .line 142
    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    .line 146
    .line 147
    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_6
    return-object v1
.end method

.method public onDetachedFromWindowInternal()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x5

    .line 15
    if-eq v0, p1, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return v1

    .line 30
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 31
    .line 32
    instance-of v0, v0, Landroid/text/Spannable;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 49
    .line 50
    check-cast v0, Landroid/text/Spannable;

    .line 51
    .line 52
    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 53
    .line 54
    .line 55
    :cond_4
    return v1

    .line 56
    :cond_5
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 57
    .line 58
    if-eqz p1, :cond_6

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/widget/Editor;->hasInsertionController()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_6

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_6
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget v5, v0, Landroid/view/View;->mScrollX:I

    .line 28
    .line 29
    iget v6, v0, Landroid/view/View;->mScrollY:I

    .line 30
    .line 31
    iget v8, v0, Landroid/view/View;->mRight:I

    .line 32
    .line 33
    iget v9, v0, Landroid/view/View;->mLeft:I

    .line 34
    .line 35
    iget v10, v0, Landroid/view/View;->mBottom:I

    .line 36
    .line 37
    iget v11, v0, Landroid/view/View;->mTop:I

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 40
    .line 41
    .line 42
    move-result v12

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    if-eqz v12, :cond_0

    .line 48
    .line 49
    const/4 v14, 0x0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v14, v13

    .line 52
    :goto_0
    if-eqz v12, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v13, 0x0

    .line 56
    :goto_1
    iget-object v12, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 57
    .line 58
    if-eqz v12, :cond_5

    .line 59
    .line 60
    sub-int v15, v10, v11

    .line 61
    .line 62
    sub-int/2addr v15, v4

    .line 63
    sub-int/2addr v15, v2

    .line 64
    sub-int v16, v8, v9

    .line 65
    .line 66
    sub-int v16, v16, v3

    .line 67
    .line 68
    sub-int v3, v16, v1

    .line 69
    .line 70
    move/from16 v16, v4

    .line 71
    .line 72
    iget-object v4, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    const/16 v17, 0x0

    .line 75
    .line 76
    aget-object v4, v4, v17

    .line 77
    .line 78
    const/16 v17, 0x2

    .line 79
    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    .line 84
    .line 85
    iget v4, v0, Landroid/view/View;->mPaddingLeft:I

    .line 86
    .line 87
    add-int/2addr v4, v5

    .line 88
    add-int/2addr v4, v14

    .line 89
    int-to-float v4, v4

    .line 90
    add-int v14, v6, v2

    .line 91
    .line 92
    move/from16 v18, v11

    .line 93
    .line 94
    iget v11, v12, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 95
    .line 96
    move/from16 v19, v10

    .line 97
    .line 98
    const/4 v10, 0x2

    .line 99
    invoke-static {v15, v11, v10, v14}, Landroid/app/m;->b(IIII)I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    int-to-float v10, v10

    .line 104
    invoke-virtual {v7, v4, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    .line 106
    .line 107
    iget-object v4, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    const/4 v10, 0x0

    .line 110
    aget-object v4, v4, v10

    .line 111
    .line 112
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    move/from16 v19, v10

    .line 120
    .line 121
    move/from16 v18, v11

    .line 122
    .line 123
    :goto_2
    iget-object v4, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    aget-object v4, v4, v17

    .line 126
    .line 127
    if-eqz v4, :cond_3

    .line 128
    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    .line 131
    .line 132
    add-int v4, v5, v8

    .line 133
    .line 134
    sub-int/2addr v4, v9

    .line 135
    iget v10, v0, Landroid/view/View;->mPaddingRight:I

    .line 136
    .line 137
    sub-int/2addr v4, v10

    .line 138
    iget v10, v12, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 139
    .line 140
    sub-int/2addr v4, v10

    .line 141
    sub-int/2addr v4, v13

    .line 142
    int-to-float v4, v4

    .line 143
    add-int v10, v6, v2

    .line 144
    .line 145
    iget v11, v12, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 146
    .line 147
    const/4 v13, 0x2

    .line 148
    invoke-static {v15, v11, v13, v10}, Landroid/app/m;->b(IIII)I

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    int-to-float v10, v10

    .line 153
    invoke-virtual {v7, v4, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    .line 155
    .line 156
    iget-object v4, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 157
    .line 158
    aget-object v4, v4, v17

    .line 159
    .line 160
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    .line 165
    .line 166
    :cond_3
    iget-object v4, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 167
    .line 168
    const/4 v10, 0x1

    .line 169
    aget-object v4, v4, v10

    .line 170
    .line 171
    if-eqz v4, :cond_4

    .line 172
    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 174
    .line 175
    .line 176
    add-int v4, v5, v1

    .line 177
    .line 178
    iget v10, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 179
    .line 180
    const/4 v11, 0x2

    .line 181
    invoke-static {v3, v10, v11, v4}, Landroid/app/m;->b(IIII)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    int-to-float v4, v4

    .line 186
    iget v10, v0, Landroid/view/View;->mPaddingTop:I

    .line 187
    .line 188
    add-int/2addr v10, v6

    .line 189
    int-to-float v10, v10

    .line 190
    invoke-virtual {v7, v4, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    .line 192
    .line 193
    iget-object v4, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 194
    .line 195
    const/4 v10, 0x1

    .line 196
    aget-object v4, v4, v10

    .line 197
    .line 198
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 202
    .line 203
    .line 204
    :cond_4
    iget-object v4, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 205
    .line 206
    const/4 v10, 0x3

    .line 207
    aget-object v4, v4, v10

    .line 208
    .line 209
    if-eqz v4, :cond_6

    .line 210
    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 212
    .line 213
    .line 214
    add-int v4, v5, v1

    .line 215
    .line 216
    iget v10, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    .line 217
    .line 218
    const/4 v11, 0x2

    .line 219
    invoke-static {v3, v10, v11, v4}, Landroid/app/m;->b(IIII)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    int-to-float v3, v3

    .line 224
    add-int v10, v6, v19

    .line 225
    .line 226
    sub-int v10, v10, v18

    .line 227
    .line 228
    iget v4, v0, Landroid/view/View;->mPaddingBottom:I

    .line 229
    .line 230
    sub-int/2addr v10, v4

    .line 231
    iget v4, v12, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 232
    .line 233
    sub-int/2addr v10, v4

    .line 234
    int-to-float v4, v10

    .line 235
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 236
    .line 237
    .line 238
    iget-object v3, v12, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 239
    .line 240
    const/4 v4, 0x3

    .line 241
    aget-object v3, v3, v4

    .line 242
    .line 243
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_5
    move/from16 v16, v4

    .line 251
    .line 252
    move/from16 v19, v10

    .line 253
    .line 254
    move/from16 v18, v11

    .line 255
    .line 256
    :cond_6
    :goto_3
    iget v3, v0, Landroid/widget/TextView;->mCurTextColor:I

    .line 257
    .line 258
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 259
    .line 260
    if-nez v4, :cond_7

    .line 261
    .line 262
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 263
    .line 264
    .line 265
    :cond_7
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 266
    .line 267
    iget-object v10, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 268
    .line 269
    if-eqz v10, :cond_9

    .line 270
    .line 271
    iget-object v10, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 272
    .line 273
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    if-nez v10, :cond_9

    .line 278
    .line 279
    iget-object v4, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 280
    .line 281
    if-eqz v4, :cond_8

    .line 282
    .line 283
    iget v3, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 284
    .line 285
    :cond_8
    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 286
    .line 287
    :cond_9
    move-object v10, v4

    .line 288
    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 289
    .line 290
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    .line 292
    .line 293
    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 294
    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    iput-object v4, v3, Landroid/text/TextPaint;->drawableState:[I

    .line 300
    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 302
    .line 303
    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    iget v11, v0, Landroid/view/View;->mBottom:I

    .line 313
    .line 314
    iget v12, v0, Landroid/view/View;->mTop:I

    .line 315
    .line 316
    sub-int/2addr v11, v12

    .line 317
    sub-int v11, v11, v16

    .line 318
    .line 319
    sub-int/2addr v11, v2

    .line 320
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 321
    .line 322
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    sub-int/2addr v2, v11

    .line 327
    add-int v11, v1, v5

    .line 328
    .line 329
    int-to-float v11, v11

    .line 330
    const/4 v12, 0x0

    .line 331
    if-nez v6, :cond_a

    .line 332
    .line 333
    move v13, v12

    .line 334
    goto :goto_4

    .line 335
    :cond_a
    add-int v13, v3, v6

    .line 336
    .line 337
    int-to-float v13, v13

    .line 338
    :goto_4
    sub-int/2addr v8, v9

    .line 339
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    sub-int/2addr v8, v9

    .line 344
    add-int/2addr v8, v5

    .line 345
    int-to-float v5, v8

    .line 346
    sub-int v8, v19, v18

    .line 347
    .line 348
    add-int/2addr v8, v6

    .line 349
    if-ne v6, v2, :cond_b

    .line 350
    .line 351
    const/4 v4, 0x0

    .line 352
    :cond_b
    sub-int/2addr v8, v4

    .line 353
    int-to-float v2, v8

    .line 354
    iget v4, v0, Landroid/widget/TextView;->mShadowRadius:F

    .line 355
    .line 356
    cmpl-float v6, v4, v12

    .line 357
    .line 358
    if-eqz v6, :cond_c

    .line 359
    .line 360
    iget v6, v0, Landroid/widget/TextView;->mShadowDx:F

    .line 361
    .line 362
    sub-float/2addr v6, v4

    .line 363
    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    add-float/2addr v11, v4

    .line 368
    iget v4, v0, Landroid/widget/TextView;->mShadowDx:F

    .line 369
    .line 370
    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    .line 371
    .line 372
    add-float/2addr v4, v6

    .line 373
    invoke-static {v12, v4}, Ljava/lang/Math;->max(FF)F

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    add-float/2addr v5, v4

    .line 378
    iget v4, v0, Landroid/widget/TextView;->mShadowDy:F

    .line 379
    .line 380
    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    .line 381
    .line 382
    sub-float/2addr v4, v6

    .line 383
    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    add-float/2addr v13, v4

    .line 388
    iget v4, v0, Landroid/widget/TextView;->mShadowDy:F

    .line 389
    .line 390
    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    .line 391
    .line 392
    add-float/2addr v4, v6

    .line 393
    invoke-static {v12, v4}, Ljava/lang/Math;->max(FF)F

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    add-float/2addr v2, v4

    .line 398
    :cond_c
    invoke-virtual {v7, v11, v13, v5, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 399
    .line 400
    .line 401
    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    .line 402
    .line 403
    and-int/lit8 v2, v2, 0x70

    .line 404
    .line 405
    const/16 v4, 0x30

    .line 406
    .line 407
    if-eq v2, v4, :cond_d

    .line 408
    .line 409
    const/4 v2, 0x0

    .line 410
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    const/4 v4, 0x1

    .line 415
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    goto :goto_5

    .line 420
    :cond_d
    const/4 v2, 0x0

    .line 421
    const/4 v4, 0x0

    .line 422
    :goto_5
    int-to-float v1, v1

    .line 423
    add-int/2addr v3, v2

    .line 424
    int-to-float v3, v3

    .line 425
    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 426
    .line 427
    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    iget v3, v0, Landroid/widget/TextView;->mGravity:I

    .line 433
    .line 434
    invoke-static {v3, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    if-eqz v3, :cond_f

    .line 443
    .line 444
    iget-boolean v3, v0, Landroid/widget/TextView;->mSingleLine:Z

    .line 445
    .line 446
    if-nez v3, :cond_e

    .line 447
    .line 448
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    const/4 v5, 0x1

    .line 453
    if-ne v3, v5, :cond_e

    .line 454
    .line 455
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    if-eqz v3, :cond_e

    .line 460
    .line 461
    and-int/lit8 v1, v1, 0x7

    .line 462
    .line 463
    const/4 v3, 0x3

    .line 464
    if-eq v1, v3, :cond_e

    .line 465
    .line 466
    iget v1, v0, Landroid/view/View;->mRight:I

    .line 467
    .line 468
    iget v3, v0, Landroid/view/View;->mLeft:I

    .line 469
    .line 470
    sub-int/2addr v1, v3

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 472
    .line 473
    .line 474
    move-result v3

    .line 475
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    add-int/2addr v5, v3

    .line 480
    iget-object v3, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 481
    .line 482
    const/4 v6, 0x0

    .line 483
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineRight(I)F

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    sub-int/2addr v1, v5

    .line 488
    int-to-float v1, v1

    .line 489
    sub-float/2addr v3, v1

    .line 490
    invoke-virtual {v10, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    int-to-float v1, v1

    .line 495
    mul-float/2addr v1, v3

    .line 496
    invoke-virtual {v7, v1, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 497
    .line 498
    .line 499
    :cond_e
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 500
    .line 501
    if-eqz v1, :cond_f

    .line 502
    .line 503
    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isRunning()Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    if-eqz v1, :cond_f

    .line 508
    .line 509
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 510
    .line 511
    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getScroll()F

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    neg-float v1, v1

    .line 516
    const/4 v3, 0x0

    .line 517
    invoke-virtual {v10, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    int-to-float v3, v3

    .line 522
    mul-float/2addr v3, v1

    .line 523
    invoke-virtual {v7, v3, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 524
    .line 525
    .line 526
    :cond_f
    sub-int v8, v4, v2

    .line 527
    .line 528
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    .line 529
    .line 530
    .line 531
    move-result-object v9

    .line 532
    iget-object v1, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 533
    .line 534
    if-eqz v1, :cond_10

    .line 535
    .line 536
    iget-object v5, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 537
    .line 538
    move-object/from16 v2, p1

    .line 539
    .line 540
    move-object v3, v10

    .line 541
    move-object v4, v9

    .line 542
    move v6, v8

    .line 543
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 544
    .line 545
    .line 546
    goto :goto_6

    .line 547
    :cond_10
    iget-object v1, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 548
    .line 549
    invoke-virtual {v10, v7, v9, v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 550
    .line 551
    .line 552
    :goto_6
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 553
    .line 554
    if-eqz v1, :cond_11

    .line 555
    .line 556
    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    if-eqz v1, :cond_11

    .line 561
    .line 562
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 563
    .line 564
    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    const/4 v2, 0x0

    .line 569
    invoke-virtual {v10, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    int-to-float v2, v2

    .line 574
    mul-float/2addr v2, v1

    .line 575
    invoke-virtual {v7, v2, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 576
    .line 577
    .line 578
    iget-object v1, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 579
    .line 580
    invoke-virtual {v10, v7, v9, v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 581
    .line 582
    .line 583
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 584
    .line 585
    .line 586
    return-void
.end method

.method public onEditorAction(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    move-object v2, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 13
    .line 14
    :goto_0
    if-eqz v2, :cond_9

    .line 15
    .line 16
    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v2, v0, v1, v3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const/4 v2, 0x5

    .line 28
    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    .line 29
    .line 30
    if-ne v1, v2, :cond_4

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_3
    :goto_1
    return-void

    .line 53
    :cond_4
    const/4 v2, 0x7

    .line 54
    if-ne v1, v2, :cond_7

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_6

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_6
    :goto_2
    return-void

    .line 77
    :cond_7
    const/4 v2, 0x6

    .line 78
    if-ne v1, v2, :cond_9

    .line 79
    .line 80
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_8

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_8

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const/4 v3, 0x0

    .line 97
    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 98
    .line 99
    .line 100
    :cond_8
    return-void

    .line 101
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_a

    .line 106
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v14

    .line 111
    new-instance v13, Landroid/view/KeyEvent;

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    const/16 v8, 0x42

    .line 115
    .line 116
    const/4 v9, 0x0

    .line 117
    const/4 v10, 0x0

    .line 118
    const/4 v11, -0x1

    .line 119
    const/4 v12, 0x0

    .line 120
    const/16 v16, 0x16

    .line 121
    .line 122
    move-object v2, v13

    .line 123
    move-wide v3, v14

    .line 124
    move-wide v5, v14

    .line 125
    move-object v0, v13

    .line 126
    move/from16 v13, v16

    .line 127
    .line 128
    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 132
    .line 133
    .line 134
    new-instance v0, Landroid/view/KeyEvent;

    .line 135
    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    const/4 v7, 0x1

    .line 141
    const/16 v13, 0x16

    .line 142
    .line 143
    move-object v2, v0

    .line 144
    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 148
    .line 149
    .line 150
    :cond_a
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 0

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isTemporarilyDetached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    .line 16
    .line 17
    .line 18
    :cond_1
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 21
    .line 22
    instance-of v1, v0, Landroid/text/Spannable;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    check-cast v0, Landroid/text/Spannable;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 39
    .line 40
    move-object v2, p0

    .line 41
    move v4, p1

    .line 42
    move v5, p2

    .line 43
    move-object v6, p3

    .line 44
    invoke-interface/range {v1 .. v6}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 6
    .line 7
    instance-of v2, v1, Landroid/text/Spannable;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    :try_start_0
    check-cast v1, Landroid/text/Spannable;

    .line 16
    .line 17
    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :catch_0
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x2000

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 31
    .line 32
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_TEXT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 61
    .line 62
    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 70
    .line 71
    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 77
    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    const/16 v0, 0x100

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 87
    .line 88
    .line 89
    const/16 v0, 0x200

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 92
    .line 93
    .line 94
    const/16 v0, 0x1f

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 97
    .line 98
    .line 99
    const/high16 v0, 0x20000

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 102
    .line 103
    .line 104
    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 105
    .line 106
    filled-new-array {v0}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    const/16 v0, 0x4000

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    const v0, 0x8000

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 144
    .line 145
    .line 146
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    const/high16 v0, 0x10000

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 155
    .line 156
    .line 157
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_6

    .line 162
    .line 163
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const v3, 0x10405b3

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const/high16 v3, 0x10000000

    .line 177
    .line 178
    invoke-direct {v0, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 182
    .line 183
    .line 184
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canProcessText()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 191
    .line 192
    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 193
    .line 194
    invoke-virtual {v0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 195
    .line 196
    .line 197
    :cond_7
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 198
    .line 199
    array-length v0, v0

    .line 200
    const/4 v1, 0x0

    .line 201
    :goto_0
    if-ge v1, v0, :cond_9

    .line 202
    .line 203
    iget-object v3, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 204
    .line 205
    aget-object v3, v3, v1

    .line 206
    .line 207
    instance-of v4, v3, Landroid/text/InputFilter$LengthFilter;

    .line 208
    .line 209
    if-eqz v4, :cond_8

    .line 210
    .line 211
    check-cast v3, Landroid/text/InputFilter$LengthFilter;

    .line 212
    .line 213
    invoke-virtual {v3}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 218
    .line 219
    .line 220
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_a

    .line 228
    .line 229
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    .line 230
    .line 231
    .line 232
    :cond_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p3, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    const/4 v3, -0x1

    .line 19
    if-ne v1, v3, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    add-int/2addr p2, v3

    .line 23
    invoke-static {p3, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    if-ne v1, v2, :cond_3

    .line 28
    .line 29
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 30
    .line 31
    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 32
    .line 33
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 34
    .line 35
    check-cast v4, Landroid/text/Editable;

    .line 36
    .line 37
    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 38
    .line 39
    .line 40
    :goto_0
    add-int/2addr p2, v3

    .line 41
    if-lez p2, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 44
    .line 45
    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 46
    .line 47
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 48
    .line 49
    check-cast v4, Landroid/text/Editable;

    .line 50
    .line 51
    invoke-interface {v1, p0, v4, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 55
    .line 56
    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 57
    .line 58
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 59
    .line 60
    check-cast v4, Landroid/text/Editable;

    .line 61
    .line 62
    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    const/4 v4, 0x2

    .line 71
    if-ne v1, v4, :cond_4

    .line 72
    .line 73
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 74
    .line 75
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 76
    .line 77
    check-cast v4, Landroid/text/Spannable;

    .line 78
    .line 79
    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 80
    .line 81
    .line 82
    :goto_1
    add-int/2addr p2, v3

    .line 83
    if-lez p2, :cond_4

    .line 84
    .line 85
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 86
    .line 87
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 88
    .line 89
    check-cast v4, Landroid/text/Spannable;

    .line 90
    .line 91
    invoke-interface {v1, p0, v4, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 95
    .line 96
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 97
    .line 98
    check-cast v4, Landroid/text/Spannable;

    .line 99
    .line 100
    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    :goto_2
    return v2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x36

    .line 8
    .line 9
    const/16 v2, 0x32

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    const/16 v0, 0x1d

    .line 14
    .line 15
    if-eq p1, v0, :cond_4

    .line 16
    .line 17
    const/16 v0, 0x1f

    .line 18
    .line 19
    if-eq p1, v0, :cond_3

    .line 20
    .line 21
    if-eq p1, v2, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x34

    .line 24
    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    if-eq p1, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_8

    .line 35
    .line 36
    const p1, 0x1020032

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_8

    .line 49
    .line 50
    const p1, 0x1020020

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_8

    .line 63
    .line 64
    const p1, 0x1020022

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    return p1

    .line 72
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_8

    .line 77
    .line 78
    const p1, 0x1020021

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    return p1

    .line 86
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    const p1, 0x102001f

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    return p1

    .line 100
    :cond_5
    const/16 v0, 0x1001

    .line 101
    .line 102
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    if-eq p1, v2, :cond_7

    .line 109
    .line 110
    if-eq p1, v1, :cond_6

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    const p1, 0x1020033

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    return p1

    .line 127
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    const p1, 0x1020031

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    return p1

    .line 141
    :cond_8
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 20
    .line 21
    :cond_1
    const/16 v0, 0x17

    .line 22
    .line 23
    if-eq p1, v0, :cond_b

    .line 24
    .line 25
    const/16 v0, 0x42

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_8

    .line 36
    .line 37
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v3, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    iget-boolean v4, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 54
    .line 55
    invoke-interface {v3, p0, v1, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    return v2

    .line 62
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    and-int/lit8 v0, v0, 0x10

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_7

    .line 81
    .line 82
    const/16 v0, 0x82

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_6

    .line 89
    .line 90
    invoke-virtual {v3, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 97
    .line 98
    .line 99
    return v2

    .line 100
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string p2, "focus search returned a view that wasn\'t able to take focus!"

    .line 103
    .line 104
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    and-int/lit8 v0, v0, 0x10

    .line 113
    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 133
    .line 134
    .line 135
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    return p1

    .line 140
    :cond_8
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 141
    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 145
    .line 146
    if-eqz v0, :cond_9

    .line 147
    .line 148
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 149
    .line 150
    check-cast v1, Landroid/text/Editable;

    .line 151
    .line 152
    invoke-interface {v0, p0, v1, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_9

    .line 157
    .line 158
    return v2

    .line 159
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 160
    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 164
    .line 165
    if-eqz v1, :cond_a

    .line 166
    .line 167
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 168
    .line 169
    check-cast v1, Landroid/text/Spannable;

    .line 170
    .line 171
    invoke-interface {v0, p0, v1, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_a

    .line 176
    .line 177
    return v2

    .line 178
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    return p1

    .line 183
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_c

    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_c

    .line 194
    .line 195
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 196
    .line 197
    if-eqz v0, :cond_c

    .line 198
    .line 199
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 200
    .line 201
    instance-of v0, v0, Landroid/text/Editable;

    .line 202
    .line 203
    if-eqz v0, :cond_c

    .line 204
    .line 205
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 206
    .line 207
    if-eqz v0, :cond_c

    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_c

    .line 214
    .line 215
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 220
    .line 221
    .line 222
    if-eqz v0, :cond_c

    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_c

    .line 229
    .line 230
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 231
    .line 232
    .line 233
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    const/4 p2, -0x1

    .line 9
    iput p2, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 10
    .line 11
    iget-object p2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onLocaleChanged()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v9

    .line 19
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 20
    .line 21
    iget-object v3, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iput-object v3, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 30
    .line 31
    :cond_0
    const/high16 v11, 0x40000000    # 2.0f

    .line 32
    .line 33
    const/4 v14, 0x0

    .line 34
    if-ne v0, v11, :cond_1

    .line 35
    .line 36
    move v10, v1

    .line 37
    move-object v3, v2

    .line 38
    move-object v4, v3

    .line 39
    move v5, v14

    .line 40
    const/4 v12, -0x1

    .line 41
    goto/16 :goto_b

    .line 42
    .line 43
    :cond_1
    iget-object v3, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    iget-object v4, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 48
    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v3, -0x1

    .line 57
    :goto_0
    if-gez v3, :cond_4

    .line 58
    .line 59
    iget-object v4, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 60
    .line 61
    iget-object v5, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 62
    .line 63
    iget-object v6, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 64
    .line 65
    iget-object v15, v7, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 66
    .line 67
    invoke-static {v4, v5, v6, v15}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    iput-object v4, v7, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 74
    .line 75
    :cond_3
    move v5, v14

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move-object v4, v2

    .line 78
    const/4 v5, 0x1

    .line 79
    :goto_1
    if-eqz v4, :cond_6

    .line 80
    .line 81
    if-ne v4, v2, :cond_5

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    iget v6, v4, Landroid/text/BoringLayout$Metrics;->width:I

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    :goto_2
    if-gez v3, :cond_7

    .line 88
    .line 89
    iget-object v3, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 90
    .line 91
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    iget-object v15, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 96
    .line 97
    iget-object v12, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 98
    .line 99
    invoke-static {v3, v14, v6, v15, v12}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    float-to-double v11, v3

    .line 104
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 105
    .line 106
    .line 107
    move-result-wide v11

    .line 108
    double-to-int v3, v11

    .line 109
    :cond_7
    move v6, v3

    .line 110
    :goto_3
    iget-object v11, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 111
    .line 112
    if-eqz v11, :cond_8

    .line 113
    .line 114
    iget v12, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 115
    .line 116
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    iget v11, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    .line 121
    .line 122
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    :cond_8
    iget-object v11, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 127
    .line 128
    if-eqz v11, :cond_10

    .line 129
    .line 130
    iget-object v11, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 131
    .line 132
    if-eqz v11, :cond_9

    .line 133
    .line 134
    iget-object v12, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 135
    .line 136
    if-nez v12, :cond_9

    .line 137
    .line 138
    invoke-static {v11}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    goto :goto_4

    .line 143
    :cond_9
    const/4 v11, -0x1

    .line 144
    :goto_4
    if-gez v11, :cond_a

    .line 145
    .line 146
    iget-object v12, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 147
    .line 148
    iget-object v15, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 149
    .line 150
    iget-object v10, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 151
    .line 152
    iget-object v13, v7, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 153
    .line 154
    invoke-static {v12, v15, v10, v13}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    if-eqz v10, :cond_b

    .line 159
    .line 160
    iput-object v10, v7, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_a
    move-object v10, v2

    .line 164
    :cond_b
    :goto_5
    if-eqz v10, :cond_d

    .line 165
    .line 166
    if-ne v10, v2, :cond_c

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_c
    iget v2, v10, Landroid/text/BoringLayout$Metrics;->width:I

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_d
    :goto_6
    if-gez v11, :cond_e

    .line 173
    .line 174
    iget-object v2, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 175
    .line 176
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    iget-object v12, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 181
    .line 182
    iget-object v13, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 183
    .line 184
    invoke-static {v2, v14, v11, v12, v13}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    float-to-double v11, v2

    .line 189
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 190
    .line 191
    .line 192
    move-result-wide v11

    .line 193
    double-to-int v11, v11

    .line 194
    :cond_e
    move v2, v11

    .line 195
    :goto_7
    if-le v2, v6, :cond_f

    .line 196
    .line 197
    move v6, v2

    .line 198
    :cond_f
    move-object v2, v10

    .line 199
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    add-int/2addr v11, v10

    .line 208
    add-int/2addr v11, v6

    .line 209
    iget v6, v7, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 210
    .line 211
    const/4 v10, 0x1

    .line 212
    if-ne v6, v10, :cond_11

    .line 213
    .line 214
    iget v6, v7, Landroid/widget/TextView;->mMaxWidth:I

    .line 215
    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    mul-int/2addr v12, v6

    .line 221
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    goto :goto_8

    .line 226
    :cond_11
    iget v6, v7, Landroid/widget/TextView;->mMaxWidth:I

    .line 227
    .line 228
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    :goto_8
    iget v11, v7, Landroid/widget/TextView;->mMinWidthMode:I

    .line 233
    .line 234
    if-ne v11, v10, :cond_12

    .line 235
    .line 236
    iget v10, v7, Landroid/widget/TextView;->mMinWidth:I

    .line 237
    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    mul-int/2addr v11, v10

    .line 243
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    goto :goto_9

    .line 248
    :cond_12
    iget v10, v7, Landroid/widget/TextView;->mMinWidth:I

    .line 249
    .line 250
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    const/high16 v10, -0x80000000

    .line 263
    .line 264
    if-ne v0, v10, :cond_13

    .line 265
    .line 266
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    move v10, v1

    .line 271
    move v12, v3

    .line 272
    move-object v3, v4

    .line 273
    goto :goto_a

    .line 274
    :cond_13
    move v12, v3

    .line 275
    move-object v3, v4

    .line 276
    move v10, v6

    .line 277
    :goto_a
    move-object v4, v2

    .line 278
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    sub-int v0, v10, v0

    .line 283
    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    sub-int v11, v0, v1

    .line 289
    .line 290
    iget-boolean v0, v7, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 291
    .line 292
    if-eqz v0, :cond_14

    .line 293
    .line 294
    const/high16 v0, 0x100000

    .line 295
    .line 296
    move v2, v0

    .line 297
    goto :goto_c

    .line 298
    :cond_14
    move v2, v11

    .line 299
    :goto_c
    iget-object v0, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 300
    .line 301
    if-nez v0, :cond_15

    .line 302
    .line 303
    move v0, v2

    .line 304
    goto :goto_d

    .line 305
    :cond_15
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    :goto_d
    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 310
    .line 311
    if-nez v1, :cond_17

    .line 312
    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    sub-int v0, v10, v0

    .line 318
    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    sub-int v5, v0, v1

    .line 324
    .line 325
    const/4 v6, 0x0

    .line 326
    move-object/from16 v0, p0

    .line 327
    .line 328
    move v1, v2

    .line 329
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 330
    .line 331
    .line 332
    :cond_16
    :goto_e
    const/high16 v0, 0x40000000    # 2.0f

    .line 333
    .line 334
    goto/16 :goto_14

    .line 335
    .line 336
    :cond_17
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-ne v1, v2, :cond_19

    .line 341
    .line 342
    if-ne v0, v2, :cond_19

    .line 343
    .line 344
    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 345
    .line 346
    invoke-virtual {v0}, Landroid/text/Layout;->getEllipsizedWidth()I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    sub-int v1, v10, v1

    .line 355
    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    sub-int/2addr v1, v6

    .line 361
    if-eq v0, v1, :cond_18

    .line 362
    .line 363
    goto :goto_f

    .line 364
    :cond_18
    move v0, v14

    .line 365
    goto :goto_10

    .line 366
    :cond_19
    :goto_f
    const/4 v0, 0x1

    .line 367
    :goto_10
    iget-object v1, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 368
    .line 369
    if-nez v1, :cond_1b

    .line 370
    .line 371
    iget-object v1, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 372
    .line 373
    if-nez v1, :cond_1b

    .line 374
    .line 375
    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 376
    .line 377
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-le v2, v1, :cond_1b

    .line 382
    .line 383
    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 384
    .line 385
    instance-of v1, v1, Landroid/text/BoringLayout;

    .line 386
    .line 387
    if-nez v1, :cond_1a

    .line 388
    .line 389
    if-eqz v5, :cond_1b

    .line 390
    .line 391
    if-ltz v12, :cond_1b

    .line 392
    .line 393
    if-gt v12, v2, :cond_1b

    .line 394
    .line 395
    :cond_1a
    const/4 v1, 0x1

    .line 396
    goto :goto_11

    .line 397
    :cond_1b
    move v1, v14

    .line 398
    :goto_11
    iget v5, v7, Landroid/widget/TextView;->mMaxMode:I

    .line 399
    .line 400
    iget v6, v7, Landroid/widget/TextView;->mOldMaxMode:I

    .line 401
    .line 402
    if-ne v5, v6, :cond_1d

    .line 403
    .line 404
    iget v5, v7, Landroid/widget/TextView;->mMaximum:I

    .line 405
    .line 406
    iget v6, v7, Landroid/widget/TextView;->mOldMaximum:I

    .line 407
    .line 408
    if-eq v5, v6, :cond_1c

    .line 409
    .line 410
    goto :goto_12

    .line 411
    :cond_1c
    move v5, v14

    .line 412
    goto :goto_13

    .line 413
    :cond_1d
    :goto_12
    const/4 v5, 0x1

    .line 414
    :goto_13
    if-nez v0, :cond_1e

    .line 415
    .line 416
    if-eqz v5, :cond_16

    .line 417
    .line 418
    :cond_1e
    if-nez v5, :cond_1f

    .line 419
    .line 420
    if-eqz v1, :cond_1f

    .line 421
    .line 422
    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 423
    .line 424
    invoke-virtual {v0, v2}, Landroid/text/Layout;->increaseWidthTo(I)V

    .line 425
    .line 426
    .line 427
    goto :goto_e

    .line 428
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    sub-int v0, v10, v0

    .line 433
    .line 434
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    sub-int v5, v0, v1

    .line 439
    .line 440
    const/4 v6, 0x0

    .line 441
    move-object/from16 v0, p0

    .line 442
    .line 443
    move v1, v2

    .line 444
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 445
    .line 446
    .line 447
    goto :goto_e

    .line 448
    :goto_14
    if-ne v8, v0, :cond_20

    .line 449
    .line 450
    const/4 v0, -0x1

    .line 451
    iput v0, v7, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 452
    .line 453
    goto :goto_15

    .line 454
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    iput v0, v7, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 459
    .line 460
    const/high16 v1, -0x80000000

    .line 461
    .line 462
    if-ne v8, v1, :cond_21

    .line 463
    .line 464
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 465
    .line 466
    .line 467
    move-result v9

    .line 468
    goto :goto_15

    .line 469
    :cond_21
    move v9, v0

    .line 470
    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    sub-int v0, v9, v0

    .line 475
    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    sub-int/2addr v0, v1

    .line 481
    iget v1, v7, Landroid/widget/TextView;->mMaxMode:I

    .line 482
    .line 483
    const/4 v2, 0x1

    .line 484
    if-ne v1, v2, :cond_22

    .line 485
    .line 486
    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 487
    .line 488
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    iget v2, v7, Landroid/widget/TextView;->mMaximum:I

    .line 493
    .line 494
    if-le v1, v2, :cond_22

    .line 495
    .line 496
    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 497
    .line 498
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    :cond_22
    iget-object v1, v7, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 507
    .line 508
    if-nez v1, :cond_24

    .line 509
    .line 510
    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 511
    .line 512
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    if-gt v1, v11, :cond_24

    .line 517
    .line 518
    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 519
    .line 520
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-le v1, v0, :cond_23

    .line 525
    .line 526
    goto :goto_16

    .line 527
    :cond_23
    invoke-virtual {v7, v14, v14}, Landroid/view/View;->scrollTo(II)V

    .line 528
    .line 529
    .line 530
    goto :goto_17

    .line 531
    :cond_24
    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 532
    .line 533
    .line 534
    :goto_17
    invoke-virtual {v7, v10, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 535
    .line 536
    .line 537
    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :cond_1
    if-gez v0, :cond_2

    .line 35
    .line 36
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    .line 37
    .line 38
    and-int/lit8 v1, v1, 0x70

    .line 39
    .line 40
    const/16 v2, 0x50

    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :cond_2
    if-ltz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    .line 57
    .line 58
    .line 59
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    iget-boolean v1, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 64
    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    iput-boolean v1, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 74
    .line 75
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->unregisterForPreDraw()V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    return v0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->onProvideAutoStructureForAssistOrAutofill(Landroid/view/ViewStructure;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;->onProvideAutoStructureForAssistOrAutofill(Landroid/view/ViewStructure;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 19
    .line 20
    iget-object p1, p1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    aget-object p1, p1, v0

    .line 24
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;->prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 29
    .line 30
    iget-object p1, p1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    aget-object p1, p1, v0

    .line 34
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;->prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/text/Spannable;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 24
    .line 25
    check-cast v1, Landroid/text/Spannable;

    .line 26
    .line 27
    const-class v2, Landroid/text/style/ClickableSpan;

    .line 28
    .line 29
    invoke-interface {v1, v0, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 34
    .line 35
    array-length v0, v0

    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const/16 p2, 0x3ea

    .line 41
    .line 42
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    const/16 p2, 0x3f0

    .line 68
    .line 69
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/widget/TextView$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroid/widget/TextView$SavedState;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget v0, p1, Landroid/widget/TextView$SavedState;->selStart:I

    .line 26
    .line 27
    if-ltz v0, :cond_5

    .line 28
    .line 29
    iget v0, p1, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 30
    .line 31
    if-ltz v0, :cond_5

    .line 32
    .line 33
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 34
    .line 35
    instance-of v1, v0, Landroid/text/Spannable;

    .line 36
    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v1, p1, Landroid/widget/TextView$SavedState;->selStart:I

    .line 44
    .line 45
    if-gt v1, v0, :cond_3

    .line 46
    .line 47
    iget v2, p1, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 48
    .line 49
    if-le v2, v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 53
    .line 54
    check-cast v0, Landroid/text/Spannable;

    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 57
    .line 58
    .line 59
    iget-boolean v0, p1, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    :goto_0
    iget-object v0, p1, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    const-string v0, "(restored) "

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const-string v0, ""

    .line 80
    .line 81
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v2, "Saved cursor position "

    .line 84
    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget v2, p1, Landroid/widget/TextView$SavedState;->selStart:I

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, "/"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v2, p1, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, " out of range for "

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string/jumbo v0, "text "

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "TextView"

    .line 127
    .line 128
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_2
    iget-object v0, p1, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    new-instance v1, Landroid/widget/TextView$1;

    .line 136
    .line 137
    invoke-direct {v1, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 141
    .line 142
    .line 143
    :cond_6
    iget-object v0, p1, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 151
    .line 152
    iget-object p1, p1, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    .line 153
    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->restoreInstanceState(Landroid/os/ParcelableParcel;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 9
    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 13
    .line 14
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getFreezesText()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-gez v2, :cond_0

    .line 24
    .line 25
    if-ltz v5, :cond_2

    .line 26
    .line 27
    :cond_0
    move v4, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, -0x1

    .line 30
    move v5, v2

    .line 31
    :cond_2
    :goto_0
    if-nez v1, :cond_4

    .line 32
    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    return-object v0

    .line 37
    :cond_4
    :goto_1
    new-instance v6, Landroid/widget/TextView$SavedState;

    .line 38
    .line 39
    invoke-direct {v6, v0}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 40
    .line 41
    .line 42
    if-eqz v1, :cond_7

    .line 43
    .line 44
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 45
    .line 46
    instance-of v1, v0, Landroid/text/Spanned;

    .line 47
    .line 48
    if-eqz v1, :cond_6

    .line 49
    .line 50
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 51
    .line 52
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 65
    .line 66
    iget-object v1, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 67
    .line 68
    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    iput-object v0, v6, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, v6, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 79
    .line 80
    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    .line 81
    .line 82
    iput v2, v6, Landroid/widget/TextView$SavedState;->selStart:I

    .line 83
    .line 84
    iput v5, v6, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 85
    .line 86
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_9

    .line 91
    .line 92
    if-ltz v2, :cond_9

    .line 93
    .line 94
    if-ltz v5, :cond_9

    .line 95
    .line 96
    iput-boolean v3, v6, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 97
    .line 98
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, v6, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 103
    .line 104
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 105
    .line 106
    if-eqz v0, :cond_a

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/widget/Editor;->saveInstanceState()Landroid/os/ParcelableParcel;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, v6, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    .line 113
    .line 114
    :cond_a
    return-object v6
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/Editor;->onScrollChanged()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v3, v2

    .line 40
    :goto_0
    const v1, 0x1020043

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    if-eq p1, v1, :cond_5

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    packed-switch p1, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    packed-switch p1, :pswitch_data_1

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->shareSelectedText()V

    .line 55
    .line 56
    .line 57
    return v4

    .line 58
    :pswitch_1
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/widget/Editor;->replace()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return v4

    .line 66
    :pswitch_2
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/Editor;->redo()V

    .line 71
    .line 72
    .line 73
    :cond_2
    return v4

    .line 74
    :pswitch_3
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/widget/Editor;->undo()V

    .line 79
    .line 80
    .line 81
    :cond_3
    return v4

    .line 82
    :pswitch_4
    invoke-direct {p0, v3, v0, v2}, Landroid/widget/TextView;->paste(IIZ)V

    .line 83
    .line 84
    .line 85
    return v4

    .line 86
    :pswitch_5
    invoke-direct {p0, v3, v0, v4}, Landroid/widget/TextView;->paste(IIZ)V

    .line 87
    .line 88
    .line 89
    return v4

    .line 90
    :pswitch_6
    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 102
    .line 103
    .line 104
    return v4

    .line 105
    :pswitch_7
    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 117
    .line 118
    .line 119
    return v4

    .line 120
    :pswitch_8
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    .line 134
    .line 135
    .line 136
    :cond_4
    return v4

    .line 137
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->requestAutofill()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 141
    .line 142
    .line 143
    return v4

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :pswitch_data_1
    .packed-switch 0x1020031
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 14
    .line 15
    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iget-boolean v5, v3, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    if-ne v0, v2, :cond_2

    .line 40
    .line 41
    iput-boolean v4, v3, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 42
    .line 43
    iget-boolean p1, v3, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 51
    .line 52
    iput-boolean v4, p1, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 53
    .line 54
    :cond_1
    return v1

    .line 55
    :cond_2
    if-ne v0, v2, :cond_4

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iget-boolean v0, v3, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 60
    .line 61
    if-nez v0, :cond_4

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    move v0, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move v0, v4

    .line 72
    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 73
    .line 74
    if-nez v3, :cond_5

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_b

    .line 81
    .line 82
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_b

    .line 87
    .line 88
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 89
    .line 90
    instance-of v5, v3, Landroid/text/Spannable;

    .line 91
    .line 92
    if-eqz v5, :cond_b

    .line 93
    .line 94
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 95
    .line 96
    if-eqz v5, :cond_b

    .line 97
    .line 98
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 99
    .line 100
    if-eqz v5, :cond_6

    .line 101
    .line 102
    check-cast v3, Landroid/text/Spannable;

    .line 103
    .line 104
    invoke-interface {v5, p0, v3, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    or-int/2addr v3, v4

    .line 109
    goto :goto_1

    .line 110
    :cond_6
    move v3, v4

    .line 111
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    iget-boolean v6, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 118
    .line 119
    if-eqz v6, :cond_7

    .line 120
    .line 121
    iget v6, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 122
    .line 123
    if-eqz v6, :cond_7

    .line 124
    .line 125
    if-eqz v5, :cond_7

    .line 126
    .line 127
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 128
    .line 129
    check-cast v6, Landroid/text/Spannable;

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    const-class v9, Landroid/text/style/ClickableSpan;

    .line 140
    .line 141
    invoke-interface {v6, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    check-cast v6, [Landroid/text/style/ClickableSpan;

    .line 146
    .line 147
    array-length v7, v6

    .line 148
    if-lez v7, :cond_7

    .line 149
    .line 150
    aget-object v3, v6, v4

    .line 151
    .line 152
    invoke-virtual {v3, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 153
    .line 154
    .line 155
    move v3, v2

    .line 156
    :cond_7
    if-eqz v0, :cond_a

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_8

    .line 163
    .line 164
    if-eqz v5, :cond_a

    .line 165
    .line 166
    :cond_8
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_9

    .line 178
    .line 179
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 180
    .line 181
    iget-boolean v3, v3, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 182
    .line 183
    if-eqz v3, :cond_9

    .line 184
    .line 185
    if-eqz v0, :cond_9

    .line 186
    .line 187
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 188
    .line 189
    .line 190
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 191
    .line 192
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    .line 193
    .line 194
    .line 195
    move v3, v2

    .line 196
    :cond_a
    if-eqz v3, :cond_b

    .line 197
    .line 198
    return v2

    .line 199
    :cond_b
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 6
    .line 7
    instance-of v2, v1, Landroid/text/Spannable;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast v1, Landroid/text/Spannable;

    .line 16
    .line 17
    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performAccessibilityAction(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/16 v0, 0x10

    .line 16
    .line 17
    if-eq p1, v0, :cond_17

    .line 18
    .line 19
    const/16 v0, 0x100

    .line 20
    .line 21
    if-eq p1, v0, :cond_16

    .line 22
    .line 23
    const/16 v0, 0x200

    .line 24
    .line 25
    if-eq p1, v0, :cond_16

    .line 26
    .line 27
    const/16 v0, 0x4000

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eq p1, v0, :cond_14

    .line 31
    .line 32
    const v0, 0x8000

    .line 33
    .line 34
    .line 35
    if-eq p1, v0, :cond_12

    .line 36
    .line 37
    const/high16 v0, 0x10000

    .line 38
    .line 39
    if-eq p1, v0, :cond_10

    .line 40
    .line 41
    const/high16 v0, 0x20000

    .line 42
    .line 43
    if-eq p1, v0, :cond_8

    .line 44
    .line 45
    const/high16 v0, 0x200000

    .line 46
    .line 47
    if-eq p1, v0, :cond_3

    .line 48
    .line 49
    const/high16 v0, 0x10000000

    .line 50
    .line 51
    if-eq p1, v0, :cond_1

    .line 52
    .line 53
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    const p1, 0x1020035

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    return v1

    .line 80
    :cond_2
    return v2

    .line 81
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    iget-object p1, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 88
    .line 89
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 90
    .line 91
    if-eq p1, v0, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    if-eqz p2, :cond_5

    .line 95
    .line 96
    const-string p1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 97
    .line 98
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    const/4 p1, 0x0

    .line 104
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-lez p1, :cond_6

    .line 116
    .line 117
    iget-object p2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 118
    .line 119
    check-cast p2, Landroid/text/Spannable;

    .line 120
    .line 121
    invoke-static {p2, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 122
    .line 123
    .line 124
    :cond_6
    return v1

    .line 125
    :cond_7
    :goto_1
    return v2

    .line 126
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-nez p1, :cond_9

    .line 134
    .line 135
    return v2

    .line 136
    :cond_9
    const/4 v0, -0x1

    .line 137
    if-eqz p2, :cond_a

    .line 138
    .line 139
    const-string v3, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 140
    .line 141
    invoke-virtual {p2, v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    goto :goto_2

    .line 146
    :cond_a
    move v3, v0

    .line 147
    :goto_2
    if-eqz p2, :cond_b

    .line 148
    .line 149
    const-string v4, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 150
    .line 151
    invoke-virtual {p2, v4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    goto :goto_3

    .line 156
    :cond_b
    move p2, v0

    .line 157
    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-ne v4, v3, :cond_c

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eq v4, p2, :cond_f

    .line 168
    .line 169
    :cond_c
    if-ne v3, p2, :cond_d

    .line 170
    .line 171
    if-ne p2, v0, :cond_d

    .line 172
    .line 173
    check-cast p1, Landroid/text/Spannable;

    .line 174
    .line 175
    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 176
    .line 177
    .line 178
    return v1

    .line 179
    :cond_d
    if-ltz v3, :cond_f

    .line 180
    .line 181
    if-gt v3, p2, :cond_f

    .line 182
    .line 183
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-gt p2, v0, :cond_f

    .line 188
    .line 189
    check-cast p1, Landroid/text/Spannable;

    .line 190
    .line 191
    invoke-static {p1, v3, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 195
    .line 196
    if-eqz p1, :cond_e

    .line 197
    .line 198
    invoke-virtual {p1, v2}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    .line 199
    .line 200
    .line 201
    :cond_e
    return v1

    .line 202
    :cond_f
    return v2

    .line 203
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_11

    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_11

    .line 214
    .line 215
    const p1, 0x1020020

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_11

    .line 223
    .line 224
    return v1

    .line 225
    :cond_11
    return v2

    .line 226
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eqz p1, :cond_13

    .line 231
    .line 232
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_13

    .line 237
    .line 238
    const p1, 0x1020022

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_13

    .line 246
    .line 247
    return v1

    .line 248
    :cond_13
    return v2

    .line 249
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-eqz p1, :cond_15

    .line 254
    .line 255
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_15

    .line 260
    .line 261
    const p1, 0x1020021

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_15

    .line 269
    .line 270
    return v1

    .line 271
    :cond_15
    return v2

    .line 272
    :cond_16
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    .line 273
    .line 274
    .line 275
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    return p1

    .line 280
    :cond_17
    invoke-direct {p0, p2}, Landroid/widget/TextView;->performAccessibilityActionClick(Landroid/os/Bundle;)Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    return p1
.end method

.method public performLongClick()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, v0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    or-int/2addr v3, v0

    .line 22
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 23
    .line 24
    iput-boolean v2, v4, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v3, v0

    .line 28
    :goto_0
    if-eqz v3, :cond_3

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iput-boolean v1, v0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const/16 v1, 0x275

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 47
    .line 48
    .line 49
    :cond_4
    :goto_1
    return v3
.end method

.method public populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8
    .line 9
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 14
    .line 15
    add-int/lit8 v5, v2, -0x1

    .line 16
    .line 17
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    :goto_0
    if-gt v3, v4, :cond_a

    .line 22
    .line 23
    iget-object v5, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 24
    .line 25
    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 30
    .line 31
    invoke-virtual {v6, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    iget-object v7, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 44
    .line 45
    invoke-virtual {v7, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/4 v9, 0x1

    .line 50
    if-ne v7, v9, :cond_0

    .line 51
    .line 52
    move v7, v9

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v7, 0x0

    .line 55
    :goto_1
    sub-int v10, v6, v5

    .line 56
    .line 57
    new-array v10, v10, [F

    .line 58
    .line 59
    iget-object v11, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 60
    .line 61
    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    iget-object v12, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 66
    .line 67
    invoke-virtual {v11, v12, v5, v6, v10}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 68
    .line 69
    .line 70
    iget-object v11, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 71
    .line 72
    invoke-virtual {v11, v3}, Landroid/text/Layout;->getLineTop(I)I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    int-to-float v11, v11

    .line 77
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 78
    .line 79
    invoke-virtual {v12, v3}, Landroid/text/Layout;->getLineBottom(I)I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    int-to-float v12, v12

    .line 84
    move v15, v5

    .line 85
    :goto_2
    if-ge v15, v6, :cond_9

    .line 86
    .line 87
    sub-int v13, v15, v5

    .line 88
    .line 89
    aget v13, v10, v13

    .line 90
    .line 91
    iget-object v14, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 92
    .line 93
    invoke-virtual {v14, v15}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    iget-object v8, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 98
    .line 99
    invoke-virtual {v8, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    iget-object v9, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 104
    .line 105
    invoke-virtual {v9, v15}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-eqz v7, :cond_2

    .line 110
    .line 111
    if-eqz v14, :cond_1

    .line 112
    .line 113
    sub-float v8, v9, v13

    .line 114
    .line 115
    move v13, v9

    .line 116
    goto :goto_4

    .line 117
    :cond_1
    add-float/2addr v13, v8

    .line 118
    goto :goto_4

    .line 119
    :cond_2
    if-nez v14, :cond_3

    .line 120
    .line 121
    add-float v8, v9, v13

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    sub-float v9, v8, v13

    .line 125
    .line 126
    :goto_3
    move v13, v8

    .line 127
    move v8, v9

    .line 128
    :goto_4
    add-float v8, v8, p4

    .line 129
    .line 130
    add-float v9, v13, p4

    .line 131
    .line 132
    add-float v13, v11, p5

    .line 133
    .line 134
    add-float v1, v12, p5

    .line 135
    .line 136
    invoke-virtual {v0, v8, v13}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    .line 137
    .line 138
    .line 139
    move-result v16

    .line 140
    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    .line 141
    .line 142
    .line 143
    move-result v17

    .line 144
    if-nez v16, :cond_5

    .line 145
    .line 146
    if-eqz v17, :cond_4

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_4
    const/16 v18, 0x0

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_5
    :goto_5
    const/16 v18, 0x1

    .line 153
    .line 154
    :goto_6
    if-eqz v16, :cond_6

    .line 155
    .line 156
    if-nez v17, :cond_7

    .line 157
    .line 158
    :cond_6
    or-int/lit8 v18, v18, 0x2

    .line 159
    .line 160
    :cond_7
    if-eqz v14, :cond_8

    .line 161
    .line 162
    or-int/lit8 v14, v18, 0x4

    .line 163
    .line 164
    move/from16 v16, v13

    .line 165
    .line 166
    move/from16 v19, v14

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_8
    move/from16 v16, v13

    .line 170
    .line 171
    move/from16 v19, v18

    .line 172
    .line 173
    :goto_7
    move-object/from16 v13, p1

    .line 174
    .line 175
    move v14, v15

    .line 176
    move/from16 v20, v15

    .line 177
    .line 178
    move v15, v8

    .line 179
    move/from16 v17, v9

    .line 180
    .line 181
    move/from16 v18, v1

    .line 182
    .line 183
    invoke-virtual/range {v13 .. v19}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 184
    .line 185
    .line 186
    add-int/lit8 v15, v20, 0x1

    .line 187
    .line 188
    move/from16 v1, p2

    .line 189
    .line 190
    const/4 v9, 0x1

    .line 191
    goto :goto_2

    .line 192
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 193
    .line 194
    move/from16 v1, p2

    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_a
    return-void
.end method

.method public removeAdjacentSuggestionSpans(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/text/Editable;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    check-cast v0, Landroid/text/Editable;

    .line 9
    .line 10
    const-class v1, Landroid/text/style/SuggestionSpan;

    .line 11
    .line 12
    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 17
    .line 18
    array-length v2, v1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_3

    .line 21
    .line 22
    aget-object v4, v1, v3

    .line 23
    .line 24
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    aget-object v5, v1, v3

    .line 29
    .line 30
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eq v5, p1, :cond_1

    .line 35
    .line 36
    if-ne v4, p1, :cond_2

    .line 37
    .line 38
    :cond_1
    invoke-static {v0, p1, p1, v4, v5}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    aget-object v4, v1, v3

    .line 45
    .line 46
    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-void
.end method

.method public removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Landroid/text/style/SuggestionSpan;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 13
    .line 14
    :goto_0
    array-length v1, v0

    .line 15
    if-ge v2, v1, :cond_1

    .line 16
    .line 17
    aget-object v1, v0, v2

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    and-int/lit8 v3, v1, 0x1

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    and-int/lit8 v1, v1, 0x2

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    aget-object v1, v0, v2

    .line 32
    .line 33
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/text/Spanned;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Landroid/text/Spannable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Landroid/text/Spannable;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    move-object v0, p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-class v2, Landroid/text/style/SuggestionSpan;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 32
    .line 33
    :goto_1
    array-length v2, v1

    .line 34
    if-ge v3, v2, :cond_1

    .line 35
    .line 36
    aget-object v2, v1, v3

    .line 37
    .line 38
    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public replaceSelectionWithText(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    :cond_0
    return-void
.end method

.method public resetResolvedDrawables()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 6
    .line 7
    return-void
.end method

.method public selectAllText()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x1f4

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 17
    .line 18
    check-cast v1, Landroid/text/Spannable;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 22
    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    :cond_1
    return v2
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 1

    .line 1
    const v0, 0x8000

    .line 2
    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->initializeAccessibilityActions()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/16 v0, 0x1000

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroid/text/TextWatcher;

    .line 17
    .line 18
    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->notifyAutoFillManagerAfterTextChangedIfNeeded()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroid/text/TextWatcher;

    .line 17
    .line 18
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/Editor;->sendOnTextChanged(III)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v0, p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ltz v1, :cond_1

    .line 23
    .line 24
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-gt v1, v2, :cond_1

    .line 33
    .line 34
    check-cast v0, Landroid/text/Spannable;

    .line 35
    .line 36
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    check-cast v0, Landroid/text/Spannable;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/text/method/AllCapsTransformationMethod;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p1, v0}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    int-to-float p1, p1

    .line 16
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    int-to-float p2, p2

    .line 21
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    int-to-float p3, p3

    .line 26
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-lez v0, :cond_3

    .line 10
    .line 11
    new-array v2, v0, [I

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :goto_0
    if-ge v1, v0, :cond_1

    .line 29
    .line 30
    aget v4, p1, v1

    .line 31
    .line 32
    int-to-float v4, v4

    .line 33
    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    aput v4, v2, v1

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/TextView;->cleanupAutoSizePresetSizes([I)[I

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, p0, Landroid/widget/TextView;->mAutoSizeTextSizesInPx:[I

    .line 51
    .line 52
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeUniformPresetSizesConfiguration()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v1, "None of the preset sizes is valid: "

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :cond_3
    iput-boolean v1, p0, Landroid/widget/TextView;->mHasPresetAutoSizeValues:Z

    .line 84
    .line 85
    :goto_2
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 95
    .line 96
    .line 97
    :cond_4
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->supportsAutoSizeText()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/high16 v0, 0x41400000    # 12.0f

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/high16 v2, 0x42e00000    # 112.0f

    .line 28
    .line 29
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    .line 35
    invoke-direct {p0, v0, p1, v1}, Landroid/widget/TextView;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroid/widget/TextView;->setupAutoSizeText()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-direct {p0}, Landroid/widget/TextView;->autoSizeText()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v1, "Unknown auto-size text type: "

    .line 54
    .line 55
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->clearAutoSizeConfiguration()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public setBreakStrategy(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 2
    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroid/widget/TextView$Drawables;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 22
    .line 23
    :cond_1
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 24
    .line 25
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/TextView$Drawables;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 17
    .line 18
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 22
    .line 23
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/TextView$Drawables;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 17
    .line 18
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 22
    .line 23
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 26
    .line 27
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 28
    .line 29
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 30
    .line 31
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 32
    .line 33
    :cond_2
    const/4 v3, 0x1

    .line 34
    if-nez p1, :cond_4

    .line 35
    .line 36
    if-nez p2, :cond_4

    .line 37
    .line 38
    if-nez p3, :cond_4

    .line 39
    .line 40
    if-eqz p4, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move v4, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    :goto_0
    move v4, v3

    .line 46
    :goto_1
    if-nez v4, :cond_8

    .line 47
    .line 48
    if-eqz v0, :cond_12

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/TextView$Drawables;->hasMetadata()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_5

    .line 55
    .line 56
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_5
    iget-object p2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    array-length p2, p2

    .line 63
    sub-int/2addr p2, v3

    .line 64
    :goto_2
    if-ltz p2, :cond_7

    .line 65
    .line 66
    iget-object p4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    aget-object p4, p4, p2

    .line 69
    .line 70
    if-eqz p4, :cond_6

    .line 71
    .line 72
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 73
    .line 74
    .line 75
    :cond_6
    iget-object p4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    aput-object v1, p4, p2

    .line 78
    .line 79
    add-int/lit8 p2, p2, -0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_7
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 83
    .line 84
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 85
    .line 86
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 87
    .line 88
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 89
    .line 90
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 91
    .line 92
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 93
    .line 94
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    .line 95
    .line 96
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 97
    .line 98
    goto/16 :goto_6

    .line 99
    .line 100
    :cond_8
    if-nez v0, :cond_9

    .line 101
    .line 102
    new-instance v0, Landroid/widget/TextView$Drawables;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-direct {v0, v4}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 112
    .line 113
    :cond_9
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 114
    .line 115
    iput-boolean v2, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 116
    .line 117
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    aget-object v4, v4, v2

    .line 120
    .line 121
    if-eq v4, p1, :cond_a

    .line 122
    .line 123
    if-eqz v4, :cond_a

    .line 124
    .line 125
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 126
    .line 127
    .line 128
    :cond_a
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    aput-object p1, v4, v2

    .line 131
    .line 132
    aget-object v4, v4, v3

    .line 133
    .line 134
    if-eq v4, p2, :cond_b

    .line 135
    .line 136
    if-eqz v4, :cond_b

    .line 137
    .line 138
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 139
    .line 140
    .line 141
    :cond_b
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    aput-object p2, v4, v3

    .line 144
    .line 145
    const/4 v3, 0x2

    .line 146
    aget-object v4, v4, v3

    .line 147
    .line 148
    if-eq v4, p3, :cond_c

    .line 149
    .line 150
    if-eqz v4, :cond_c

    .line 151
    .line 152
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 153
    .line 154
    .line 155
    :cond_c
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    aput-object p3, v4, v3

    .line 158
    .line 159
    const/4 v3, 0x3

    .line 160
    aget-object v4, v4, v3

    .line 161
    .line 162
    if-eq v4, p4, :cond_d

    .line 163
    .line 164
    if-eqz v4, :cond_d

    .line 165
    .line 166
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 167
    .line 168
    .line 169
    :cond_d
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 170
    .line 171
    aput-object p4, v1, v3

    .line 172
    .line 173
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    if-eqz p1, :cond_e

    .line 180
    .line 181
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_e
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 204
    .line 205
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 206
    .line 207
    :goto_3
    if-eqz p3, :cond_f

    .line 208
    .line 209
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 210
    .line 211
    .line 212
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 223
    .line 224
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_f
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 232
    .line 233
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 234
    .line 235
    :goto_4
    if-eqz p2, :cond_10

    .line 236
    .line 237
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_10
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 260
    .line 261
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 262
    .line 263
    :goto_5
    if-eqz p4, :cond_11

    .line 264
    .line 265
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 266
    .line 267
    .line 268
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 279
    .line 280
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 281
    .line 282
    .line 283
    move-result p2

    .line 284
    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_11
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    .line 288
    .line 289
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 290
    .line 291
    :cond_12
    :goto_6
    if-eqz v0, :cond_13

    .line 292
    .line 293
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    .line 294
    .line 295
    iput-object p3, v0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 301
    .line 302
    .line 303
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 310
    .line 311
    .line 312
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    aget-object v3, v3, v1

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    aput-object v2, v3, v1

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    aget-object v3, v3, v4

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    aput-object v2, v3, v4

    .line 35
    .line 36
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 37
    .line 38
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 39
    .line 40
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 41
    .line 42
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 43
    .line 44
    :cond_2
    const/4 v3, 0x1

    .line 45
    if-nez p1, :cond_4

    .line 46
    .line 47
    if-nez p2, :cond_4

    .line 48
    .line 49
    if-nez p3, :cond_4

    .line 50
    .line 51
    if-eqz p4, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move v4, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    :goto_0
    move v4, v3

    .line 57
    :goto_1
    const/4 v5, 0x3

    .line 58
    if-nez v4, :cond_a

    .line 59
    .line 60
    if-eqz v0, :cond_14

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/widget/TextView$Drawables;->hasMetadata()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_5

    .line 67
    .line 68
    iput-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_5
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 77
    .line 78
    .line 79
    :cond_6
    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    aget-object p1, p1, v3

    .line 84
    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 88
    .line 89
    .line 90
    :cond_7
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    aput-object v2, p1, v3

    .line 93
    .line 94
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    if-eqz p1, :cond_8

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 99
    .line 100
    .line 101
    :cond_8
    iput-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    aget-object p1, p1, v5

    .line 106
    .line 107
    if-eqz p1, :cond_9

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 110
    .line 111
    .line 112
    :cond_9
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    aput-object v2, p1, v5

    .line 115
    .line 116
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 117
    .line 118
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 119
    .line 120
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 121
    .line 122
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 123
    .line 124
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 125
    .line 126
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 127
    .line 128
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    .line 129
    .line 130
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 131
    .line 132
    goto/16 :goto_5

    .line 133
    .line 134
    :cond_a
    if-nez v0, :cond_b

    .line 135
    .line 136
    new-instance v0, Landroid/widget/TextView$Drawables;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-direct {v0, v4}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 146
    .line 147
    :cond_b
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 148
    .line 149
    iput-boolean v3, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 150
    .line 151
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    if-eq v4, p1, :cond_c

    .line 154
    .line 155
    if-eqz v4, :cond_c

    .line 156
    .line 157
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 158
    .line 159
    .line 160
    :cond_c
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 161
    .line 162
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 163
    .line 164
    aget-object v4, v4, v3

    .line 165
    .line 166
    if-eq v4, p2, :cond_d

    .line 167
    .line 168
    if-eqz v4, :cond_d

    .line 169
    .line 170
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 171
    .line 172
    .line 173
    :cond_d
    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 174
    .line 175
    aput-object p2, v4, v3

    .line 176
    .line 177
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    if-eq v3, p3, :cond_e

    .line 180
    .line 181
    if-eqz v3, :cond_e

    .line 182
    .line 183
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 184
    .line 185
    .line 186
    :cond_e
    iput-object p3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 187
    .line 188
    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    aget-object v3, v3, v5

    .line 191
    .line 192
    if-eq v3, p4, :cond_f

    .line 193
    .line 194
    if-eqz v3, :cond_f

    .line 195
    .line 196
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 197
    .line 198
    .line 199
    :cond_f
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 200
    .line 201
    aput-object p4, v2, v5

    .line 202
    .line 203
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    if-eqz p1, :cond_10

    .line 210
    .line 211
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 225
    .line 226
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_10
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 234
    .line 235
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 236
    .line 237
    :goto_2
    if-eqz p3, :cond_11

    .line 238
    .line 239
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 240
    .line 241
    .line 242
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 253
    .line 254
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_11
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 262
    .line 263
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 264
    .line 265
    :goto_3
    if-eqz p2, :cond_12

    .line 266
    .line 267
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 281
    .line 282
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_12
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 290
    .line 291
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 292
    .line 293
    :goto_4
    if-eqz p4, :cond_13

    .line 294
    .line 295
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 296
    .line 297
    .line 298
    invoke-virtual {p4, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 309
    .line 310
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_13
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    .line 318
    .line 319
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 320
    .line 321
    :cond_14
    :goto_5
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 331
    .line 332
    .line 333
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    .line 5
    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    .line 10
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    .line 5
    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    .line 10
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCursorPosition_internal(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 12
    .line 13
    iget-boolean v1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 14
    .line 15
    if-eq v1, p1, :cond_1

    .line 16
    .line 17
    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/Editor;->makeBlink()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    iput-object p1, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 7
    .line 8
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 7
    .line 8
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 2
    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2
    .line 3
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 7
    .line 8
    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/widget/Editor;->makeBlink()V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10804fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 23
    .line 24
    if-ltz v1, :cond_3

    .line 25
    .line 26
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 31
    .line 32
    if-le v1, v0, :cond_1

    .line 33
    .line 34
    move v1, v0

    .line 35
    :cond_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 36
    .line 37
    move v5, v1

    .line 38
    if-le v2, v0, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move v5, v6

    .line 44
    :goto_0
    invoke-static {v4, v5, v0}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v4, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 52
    .line 53
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 60
    .line 61
    instance-of v2, v1, Landroid/text/Spanned;

    .line 62
    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    check-cast v1, Landroid/text/Spanned;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    sub-int v3, v0, v5

    .line 69
    .line 70
    const-class v7, Ljava/lang/Object;

    .line 71
    .line 72
    move-object v0, v1

    .line 73
    move v1, v2

    .line 74
    move v2, v3

    .line 75
    move-object v3, v7

    .line 76
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 81
    .line 82
    invoke-interface {v4, v5, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/text/Spannable;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 96
    .line 97
    if-gez v2, :cond_6

    .line 98
    .line 99
    move v2, v6

    .line 100
    goto :goto_2

    .line 101
    :cond_6
    if-le v2, v1, :cond_7

    .line 102
    .line 103
    move v2, v1

    .line 104
    :cond_7
    :goto_2
    iget v3, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 105
    .line 106
    if-gez v3, :cond_8

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_8
    if-le v3, v1, :cond_9

    .line 110
    .line 111
    move v6, v1

    .line 112
    goto :goto_3

    .line 113
    :cond_9
    move v6, v3

    .line 114
    :goto_3
    invoke-static {v0, v2, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 115
    .line 116
    .line 117
    iget p1, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 118
    .line 119
    and-int/lit8 p1, p1, 0x2

    .line 120
    .line 121
    if-eqz p1, :cond_a

    .line 122
    .line 123
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_a
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 128
    .line 129
    .line 130
    :goto_4
    return-void
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iput-object p1, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 16
    .line 17
    iget-object p1, p1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Editable;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontFeatureSettings()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontVariationSettings()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return p1

    .line 40
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 41
    return p1
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/widget/Editor;->setFrame()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 13
    .line 14
    .line 15
    return p1
.end method

.method public setFreezesText(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 11

    .line 1
    const v0, 0x800007

    .line 2
    .line 3
    .line 4
    and-int v1, p1, v0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const v1, 0x800003

    .line 9
    .line 10
    .line 11
    or-int/2addr p1, v1

    .line 12
    :cond_0
    and-int/lit8 v1, p1, 0x70

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    or-int/lit8 p1, p1, 0x30

    .line 17
    .line 18
    :cond_1
    and-int v1, p1, v0

    .line 19
    .line 20
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    .line 21
    .line 22
    and-int/2addr v0, v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eq v1, v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move v0, v3

    .line 29
    :goto_0
    if-eq p1, v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 32
    .line 33
    .line 34
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 35
    .line 36
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 37
    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iget-object p1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 47
    .line 48
    if-nez p1, :cond_4

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    :goto_1
    move v6, v3

    .line 56
    sget-object v8, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 57
    .line 58
    iget p1, p0, Landroid/view/View;->mRight:I

    .line 59
    .line 60
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 61
    .line 62
    sub-int/2addr p1, v0

    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    sub-int/2addr p1, v0

    .line 68
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    sub-int v9, p1, v0

    .line 73
    .line 74
    const/4 v10, 0x1

    .line 75
    move-object v4, p0

    .line 76
    move-object v7, v8

    .line 77
    invoke-virtual/range {v4 .. v10}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 78
    .line 79
    .line 80
    :cond_5
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2
    .line 3
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    .line 7
    .line 8
    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_2
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 4
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 2
    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 12
    .line 13
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    .line 16
    .line 17
    return-void
.end method

.method public setImeHintLocales(Landroid/os/LocaleList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 12
    .line 13
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    .line 14
    .line 15
    iget-boolean v0, p0, Landroid/widget/TextView;->mUseInternationalizedInput:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->changeListenerLocaleTo(Ljava/util/Locale;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 12
    .line 13
    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    .line 14
    .line 15
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 20
    .line 21
    new-instance v1, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 33
    .line 34
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 35
    .line 36
    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public setInputType(I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-static {v1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, p1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 4
    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v3

    .line 5
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7
    invoke-direct {p0, v7, v7, v5, v2}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;II)V

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_2

    .line 8
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v2

    .line 9
    :goto_0
    invoke-direct {p0, v7, v7, v5, v2}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;II)V

    move v2, v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, v7, v7, v0, v0}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;II)V

    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_4

    move v2, v6

    .line 12
    :cond_4
    :goto_1
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result p1

    xor-int/2addr p1, v6

    .line 13
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v0, p1, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    xor-int/lit8 v0, v3, 0x1

    .line 14
    invoke-direct {p0, p1, v0, v6}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 15
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result p1

    if-nez p1, :cond_7

    .line 16
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 17
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 18
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method public setJustificationMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mJustificationMode:I

    .line 2
    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/TextView;->mListenerChanged:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/widget/TextView;->setInputTypeFromEditor()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p1, Landroid/widget/Editor;->mInputType:I

    .line 25
    .line 26
    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    cmpl-float v0, p1, v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 8
    .line 9
    cmpl-float v0, v0, p2

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 14
    .line 15
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 16
    .line 17
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2
    .line 3
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    .line 7
    .line 8
    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 4
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return-void
.end method

.method public setMaxEms(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setMinEms(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setMinHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setMinLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setMinWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 10
    .line 11
    instance-of v0, p1, Landroid/text/Spannable;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 12
    .line 13
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 14
    .line 15
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 6
    .line 7
    if-ne p3, v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 10
    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 14
    .line 15
    if-eq p4, v0, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne p3, v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 14
    .line 15
    if-ne p2, v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 18
    .line 19
    if-eq p4, v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 12
    .line 13
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public setRawInputType(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 12
    .line 13
    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    .line 14
    .line 15
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 11
    .line 12
    instance-of v0, p1, Landroid/text/Spannable;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 6
    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 11
    .line 12
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 7
    .line 8
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 9
    .line 10
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 11
    .line 12
    iput p4, p0, Landroid/widget/TextView;->mShadowColor:I

    .line 13
    .line 14
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/Editor;->invalidateHandlesAndActionMode()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 7
    .line 8
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    return-void
.end method

.method public setSpan_internal(Ljava/lang/Object;III)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 2
    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Landroid/widget/TextView;->mTextFromResource:Z

    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Landroid/widget/TextView;->mTextFromResource:Z

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 71
    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 72
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 74
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v1, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 75
    invoke-direct {p0, v0, v1, v1, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    move v0, v1

    .line 76
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v2, :cond_1

    .line 77
    new-instance v2, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v2, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v2, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    .line 79
    :goto_1
    iget-object p1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object p2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    return-void

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget-object v0, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_0
    const/4 v0, 0x3

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 7
    :cond_1
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    int-to-float v0, v0

    .line 8
    invoke-direct {p0, v0, v2}, Landroid/widget/TextView;->setRawTextSize(FZ)V

    :cond_2
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    const/4 v0, 0x6

    .line 11
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 13
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    :try_start_0
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    move-object p1, v4

    :goto_0
    if-nez p1, :cond_6

    .line 15
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_6
    const/4 v0, -0x1

    .line 16
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x2

    .line 17
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 18
    invoke-direct {p0, p1, v4, v2, v0}, Landroid/widget/TextView;->setTypefaceFromAttrs(Landroid/graphics/Typeface;Ljava/lang/String;II)V

    const/4 p1, 0x7

    .line 19
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/16 v2, 0x8

    .line 20
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x9

    .line 21
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    const/16 v4, 0xa

    .line 22
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 23
    invoke-virtual {p0, v4, v2, v3, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_7
    const/16 p1, 0xb

    .line 24
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 25
    new-instance p1, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_8
    const/16 p1, 0xd

    .line 26
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 27
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_9
    const/16 p1, 0xe

    .line 28
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 29
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_a
    const/16 p1, 0xf

    .line 30
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 32
    :cond_b
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 5
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 12
    .line 13
    iget-boolean v1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    .line 14
    .line 15
    if-ne v1, p1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iput-boolean p1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x10

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 32
    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    sget-object p1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    sget-object p1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 53
    .line 54
    :goto_1
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-gez v0, :cond_0

    if-ltz v1, :cond_1

    .line 6
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of p2, p1, Landroid/text/Spannable;

    if-eqz p2, :cond_1

    .line 7
    check-cast p1, Landroid/text/Spannable;

    .line 8
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 10
    invoke-static {p1, p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    cmpl-float v0, p1, v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/widget/TextView;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;->setTextSizeInternal(IFZ)V

    :cond_0
    return-void
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 9
    .line 10
    instance-of v2, v1, Landroid/text/Spannable;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    check-cast v1, Landroid/text/Spannable;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 20
    .line 21
    instance-of v0, p1, Landroid/text/method/TransformationMethod2;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    check-cast p1, Landroid/text/method/TransformationMethod2;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 35
    .line 36
    instance-of v0, v0, Landroid/text/Editable;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v0, v1

    .line 43
    :goto_0
    iput-boolean v0, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 44
    .line 45
    invoke-interface {p1, v0}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 50
    .line 51
    :goto_1
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 70
    .line 71
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 10
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 13
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    .line 1
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    .line 5
    iget-object p2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 6
    iget-object p2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    goto :goto_2

    .line 7
    :cond_4
    iget-object p2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 8
    iget-object p2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2
    .line 3
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 7
    .line 8
    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public showContextMenu()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 2
    invoke-virtual {v0, v1, v1}, Landroid/widget/Editor;->setContextMenuAnchor(FF)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .locals 1

    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setContextMenuAnchor(FF)V

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->showContextMenu(FF)Z

    move-result p1

    return p1
.end method

.method public spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 8
    .line 9
    :goto_0
    sget-object v1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, -0x1

    .line 14
    if-ne p2, v1, :cond_3

    .line 15
    .line 16
    if-gez p3, :cond_1

    .line 17
    .line 18
    if-ltz p4, :cond_2

    .line 19
    .line 20
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-direct {p0, v1, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    .line 38
    .line 39
    .line 40
    :cond_2
    move v5, p4

    .line 41
    move v1, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move v1, v3

    .line 44
    move v5, v4

    .line 45
    :goto_1
    sget-object v6, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 46
    .line 47
    if-ne p2, v6, :cond_6

    .line 48
    .line 49
    if-gez p3, :cond_4

    .line 50
    .line 51
    if-ltz p4, :cond_5

    .line 52
    .line 53
    :cond_4
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-direct {p0, v1, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 58
    .line 59
    .line 60
    :cond_5
    move v4, p4

    .line 61
    move v1, v2

    .line 62
    :cond_6
    if-eqz v1, :cond_b

    .line 63
    .line 64
    iput-boolean v2, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 65
    .line 66
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 67
    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_7

    .line 75
    .line 76
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 77
    .line 78
    iput-boolean v2, v1, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 79
    .line 80
    :cond_7
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    and-int/lit16 v1, v1, 0x200

    .line 85
    .line 86
    if-nez v1, :cond_b

    .line 87
    .line 88
    if-gez v4, :cond_8

    .line 89
    .line 90
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    :cond_8
    if-gez v5, :cond_9

    .line 95
    .line 96
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    :cond_9
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 101
    .line 102
    if-eqz v1, :cond_a

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_a

    .line 112
    .line 113
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-nez v1, :cond_a

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_a

    .line 126
    .line 127
    invoke-virtual {p0, v3}, Landroid/view/View;->setHasTransientState(Z)V

    .line 128
    .line 129
    .line 130
    :cond_a
    invoke-virtual {p0, v4, v5}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 131
    .line 132
    .line 133
    :cond_b
    instance-of v1, p2, Landroid/text/style/UpdateAppearance;

    .line 134
    .line 135
    if-nez v1, :cond_c

    .line 136
    .line 137
    instance-of v1, p2, Landroid/text/style/ParagraphStyle;

    .line 138
    .line 139
    if-nez v1, :cond_c

    .line 140
    .line 141
    instance-of v1, p2, Landroid/text/style/CharacterStyle;

    .line 142
    .line 143
    if-eqz v1, :cond_11

    .line 144
    .line 145
    :cond_c
    if-eqz v0, :cond_e

    .line 146
    .line 147
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 148
    .line 149
    if-nez v1, :cond_d

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_d
    iput-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_e
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 156
    .line 157
    .line 158
    iput-boolean v2, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 159
    .line 160
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 161
    .line 162
    .line 163
    :goto_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 164
    .line 165
    if-eqz v1, :cond_11

    .line 166
    .line 167
    if-ltz p3, :cond_f

    .line 168
    .line 169
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 170
    .line 171
    invoke-virtual {v1, v3, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 172
    .line 173
    .line 174
    :cond_f
    if-ltz p4, :cond_10

    .line 175
    .line 176
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 177
    .line 178
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 179
    .line 180
    invoke-virtual {v1, v3, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 181
    .line 182
    .line 183
    :cond_10
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 184
    .line 185
    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateHandlesAndActionMode()V

    .line 186
    .line 187
    .line 188
    :cond_11
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_15

    .line 193
    .line 194
    iput-boolean v2, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 195
    .line 196
    if-eqz v0, :cond_12

    .line 197
    .line 198
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_12

    .line 203
    .line 204
    iput-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 205
    .line 206
    :cond_12
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-ltz p1, :cond_15

    .line 211
    .line 212
    if-eqz v0, :cond_14

    .line 213
    .line 214
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 215
    .line 216
    if-nez p1, :cond_13

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_13
    iput-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_14
    :goto_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 223
    .line 224
    .line 225
    :cond_15
    :goto_5
    instance-of p1, p2, Landroid/text/ParcelableSpan;

    .line 226
    .line 227
    if-eqz p1, :cond_1a

    .line 228
    .line 229
    if-eqz v0, :cond_1a

    .line 230
    .line 231
    iget-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 232
    .line 233
    if-eqz p1, :cond_1a

    .line 234
    .line 235
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 236
    .line 237
    if-eqz p1, :cond_19

    .line 238
    .line 239
    if-ltz p3, :cond_17

    .line 240
    .line 241
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 242
    .line 243
    if-le p1, p3, :cond_16

    .line 244
    .line 245
    iput p3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 246
    .line 247
    :cond_16
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 248
    .line 249
    if-le p1, p5, :cond_17

    .line 250
    .line 251
    iput p5, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 252
    .line 253
    :cond_17
    if-ltz p4, :cond_1a

    .line 254
    .line 255
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 256
    .line 257
    if-le p1, p4, :cond_18

    .line 258
    .line 259
    iput p4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 260
    .line 261
    :cond_18
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 262
    .line 263
    if-le p1, p6, :cond_1a

    .line 264
    .line 265
    iput p6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_19
    iput-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 269
    .line 270
    :cond_1a
    :goto_6
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 271
    .line 272
    if-eqz p1, :cond_1b

    .line 273
    .line 274
    iget-object p1, p1, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 275
    .line 276
    if-eqz p1, :cond_1b

    .line 277
    .line 278
    if-gez p4, :cond_1b

    .line 279
    .line 280
    instance-of p3, p2, Landroid/text/style/SpellCheckSpan;

    .line 281
    .line 282
    if-eqz p3, :cond_1b

    .line 283
    .line 284
    check-cast p2, Landroid/text/style/SpellCheckSpan;

    .line 285
    .line 286
    invoke-virtual {p1, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    .line 287
    .line 288
    .line 289
    :cond_1b
    return-void
.end method

.method public stopTextActionMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public supportsAutoSizeText()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public textCanBeSelected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 26
    .line 27
    instance-of v0, v0, Landroid/text/Spannable;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    :cond_2
    :goto_0
    return v1
.end method

.method public updateAfterEdit()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    .line 11
    .line 12
    and-int/lit8 v1, v1, 0x70

    .line 13
    .line 14
    const/16 v2, 0x50

    .line 15
    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 22
    .line 23
    .line 24
    if-ltz v0, :cond_3

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 28
    .line 29
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_1

    .line 16
    .line 17
    aget-object v4, v1, v3

    .line 18
    .line 19
    if-ne p1, v4, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v0
.end method

.method public viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public viewportToContentHorizontalOffset()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public viewportToContentVerticalOffset()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    .line 9
    .line 10
    and-int/lit8 v1, v1, 0x70

    .line 11
    .line 12
    const/16 v2, 0x30

    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    :cond_0
    return v0
.end method
