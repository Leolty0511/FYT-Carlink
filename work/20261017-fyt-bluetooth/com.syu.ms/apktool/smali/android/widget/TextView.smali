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
        Landroid/widget/TextView$Drawables;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field public static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field public static final ID_COPY:I = 0x1020021

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static LAST_CUT_OR_COPY_TIME:J = 0x0L

.field private static final LINES:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field private static final VERY_WIDE:I = 0x100000


# instance fields
.field private mAllowTransformationLengthChange:Z

.field private mAutoLinkMask:I

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field public mCursorDrawableRes:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field public mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mGravity:I

.field public mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mIncludePad:Z

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

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

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mPreDrawRegistered:Z

.field private mPreventDefaultMovement:Z

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field public mTextEditSuggestionItemLayout:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field public mTextSelectHandleLeftRes:I

.field public mTextSelectHandleRes:I

.field public mTextSelectHandleRightRes:I

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/text/InputFilter;

    .line 2
    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 3
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x101034d

    aput v3, v2, v0

    .line 4
    sput-object v2, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v1, "H"

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 8
    new-instance v0, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v0}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v0, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

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
    .locals 48

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "Failure reading input extras"

    const-string v5, "TextView"

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 5
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    const/4 v6, 0x3

    .line 6
    iput v6, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    const/4 v7, -0x1

    .line 7
    iput v7, v1, Landroid/widget/TextView;->mLastLayoutDirection:I

    const/4 v8, 0x0

    .line 8
    iput v8, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 9
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    const v0, 0x800033

    .line 10
    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    const/4 v9, 0x1

    .line 11
    iput-boolean v9, v1, Landroid/widget/TextView;->mLinksClickable:Z

    const/high16 v10, 0x3f800000    # 1.0f

    .line 12
    iput v10, v1, Landroid/widget/TextView;->mSpacingMult:F

    const/4 v11, 0x0

    .line 13
    iput v11, v1, Landroid/widget/TextView;->mSpacingAdd:F

    const v0, 0x7fffffff

    .line 14
    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 15
    iput v9, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 16
    iput v8, v1, Landroid/widget/TextView;->mMinimum:I

    .line 17
    iput v9, v1, Landroid/widget/TextView;->mMinMode:I

    .line 18
    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    .line 19
    iput v9, v1, Landroid/widget/TextView;->mOldMaxMode:I

    .line 20
    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v12, 0x2

    .line 21
    iput v12, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 22
    iput v8, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 23
    iput v12, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 24
    iput v7, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 25
    iput-boolean v9, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 26
    iput v7, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 27
    sget-object v0, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    const v0, 0x6633b5e5

    .line 28
    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 29
    iput-boolean v9, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    const-string v0, ""

    .line 30
    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 32
    invoke-virtual {v13}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v14

    .line 33
    new-instance v15, Landroid/text/TextPaint;

    invoke-direct {v15, v9}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v15, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 34
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    iput v13, v15, Landroid/text/TextPaint;->density:F

    .line 35
    iget v13, v14, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 36
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 37
    iget v14, v14, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v13

    iput-object v13, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    const/4 v13, 0x0

    .line 39
    iput-object v13, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    .line 41
    sget-object v15, Li/a;->TextViewAppearance:[I

    invoke-virtual {v14, v2, v15, v3, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 42
    invoke-virtual {v15, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 43
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v12, v7, :cond_0

    .line 44
    sget-object v13, Li/a;->TextAppearance:[I

    invoke-virtual {v14, v12, v13}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v12

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_2

    .line 45
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    move/from16 v21, v7

    move/from16 v22, v21

    move v9, v8

    move v10, v9

    move/from16 v23, v10

    move/from16 v24, v23

    move/from16 v25, v11

    move/from16 v26, v25

    move/from16 v27, v26

    const/16 v6, 0xf

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    if-ge v10, v13, :cond_1

    .line 46
    invoke-virtual {v12, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 47
    :pswitch_0
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v7

    goto :goto_2

    .line 48
    :pswitch_1
    invoke-virtual {v12, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v23

    goto :goto_2

    .line 49
    :pswitch_2
    invoke-virtual {v15, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    goto :goto_2

    .line 50
    :pswitch_3
    invoke-virtual {v15, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v26

    goto :goto_2

    .line 51
    :pswitch_4
    invoke-virtual {v15, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v25

    goto :goto_2

    .line 52
    :pswitch_5
    invoke-virtual {v15, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    goto :goto_2

    .line 53
    :pswitch_6
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    move-object/from16 v18, v7

    goto :goto_2

    .line 54
    :pswitch_7
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    move-object/from16 v17, v7

    goto :goto_2

    .line 55
    :pswitch_8
    invoke-virtual {v12, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    goto :goto_2

    .line 56
    :pswitch_9
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    move-object/from16 v16, v7

    goto :goto_2

    :pswitch_a
    const/4 v11, -0x1

    .line 57
    invoke-virtual {v12, v7, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    goto :goto_2

    :pswitch_b
    const/4 v11, -0x1

    .line 58
    invoke-virtual {v12, v7, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    goto :goto_2

    .line 59
    :pswitch_c
    invoke-virtual {v12, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v7, -0x1

    const/4 v11, 0x0

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    move v13, v6

    goto :goto_3

    :cond_2
    move v9, v8

    move/from16 v23, v9

    move/from16 v24, v23

    const/16 v13, 0xf

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 61
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v6

    .line 62
    sget-object v7, Li/a;->TextView:[I

    invoke-virtual {v14, v2, v7, v3, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 63
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    move v2, v8

    move v3, v2

    move v11, v3

    move v12, v11

    move v14, v12

    move v15, v14

    move/from16 v34, v15

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    move-object/from16 v31, v19

    move/from16 v32, v21

    move/from16 v33, v22

    move/from16 v35, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    const/16 v17, 0x0

    const/16 v22, -0x1

    const/16 v26, -0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v21, v0

    move/from16 v27, v34

    move/from16 v25, v9

    move/from16 v24, v13

    move-object/from16 v18, v16

    const/4 v13, -0x1

    const/16 v16, 0x0

    move v9, v6

    move/from16 v6, v27

    :goto_4
    if-ge v8, v10, :cond_4

    .line 64
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_d
    move/from16 v47, v8

    move/from16 v46, v10

    :cond_3
    :goto_5
    move/from16 v8, v26

    move/from16 v10, v27

    move-object/from16 v26, v4

    move/from16 v27, v6

    move/from16 v6, v24

    move/from16 v4, v25

    move/from16 v24, v33

    :goto_6
    move-object/from16 v25, v5

    goto/16 :goto_d

    .line 65
    :pswitch_e
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v0

    goto :goto_7

    .line 66
    :pswitch_f
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v44, v0

    goto :goto_7

    .line 67
    :pswitch_10
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v43, v0

    :goto_7
    move/from16 v47, v8

    move/from16 v46, v10

    goto/16 :goto_9

    :pswitch_11
    move/from16 v46, v10

    const/4 v10, 0x0

    .line 68
    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v23, v0

    move/from16 v47, v8

    goto/16 :goto_9

    :pswitch_12
    move/from16 v46, v10

    const/4 v10, 0x0

    .line 69
    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto :goto_8

    :pswitch_13
    move/from16 v46, v10

    const/4 v10, 0x0

    .line 70
    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto :goto_8

    :pswitch_14
    move/from16 v46, v10

    const/4 v10, 0x0

    .line 71
    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto :goto_8

    :pswitch_15
    move/from16 v46, v10

    const/4 v10, 0x0

    .line 72
    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto :goto_8

    :pswitch_16
    move/from16 v46, v10

    const/4 v10, 0x0

    .line 73
    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto :goto_8

    :pswitch_17
    move/from16 v46, v10

    const/4 v10, 0x0

    .line 74
    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    :goto_8
    move/from16 v47, v8

    goto :goto_5

    :pswitch_18
    move/from16 v46, v10

    .line 75
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 76
    iget-object v10, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 77
    iget-object v10, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move/from16 v47, v8

    iget v8, v10, Landroid/widget/Editor$InputContentType;->imeActionId:I

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v10, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto/16 :goto_5

    :pswitch_19
    move/from16 v47, v8

    move/from16 v46, v10

    .line 78
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 79
    iget-object v8, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v8}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 80
    iget-object v8, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :pswitch_1a
    move/from16 v47, v8

    move/from16 v46, v10

    .line 81
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 82
    iget-object v8, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v8}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 83
    iget-object v8, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v10, v8, Landroid/widget/Editor$InputContentType;->imeOptions:I

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto/16 :goto_5

    :pswitch_1b
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, 0x0

    .line 84
    :try_start_0
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 85
    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_1
    move-exception v0

    .line 86
    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :pswitch_1c
    move/from16 v47, v8

    move/from16 v46, v10

    .line 87
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1d
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, 0x0

    .line 88
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v34

    goto/16 :goto_9

    :pswitch_1e
    move/from16 v47, v8

    move/from16 v46, v10

    .line 89
    iget v8, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_5

    :pswitch_1f
    move/from16 v47, v8

    move/from16 v46, v10

    .line 90
    iget v8, v1, Landroid/widget/TextView;->mSpacingMult:F

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_5

    :pswitch_20
    move/from16 v47, v8

    move/from16 v46, v10

    .line 91
    iget v8, v1, Landroid/widget/TextView;->mSpacingAdd:F

    float-to-int v8, v8

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_5

    :pswitch_21
    move/from16 v47, v8

    move/from16 v46, v10

    .line 92
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move v2, v0

    goto/16 :goto_9

    :pswitch_22
    move/from16 v47, v8

    move/from16 v46, v10

    .line 93
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v41, v0

    goto/16 :goto_9

    :pswitch_23
    move/from16 v47, v8

    move/from16 v46, v10

    .line 94
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v39, v0

    goto/16 :goto_9

    :pswitch_24
    move/from16 v47, v8

    move/from16 v46, v10

    .line 95
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v42, v0

    goto/16 :goto_9

    :pswitch_25
    move/from16 v47, v8

    move/from16 v46, v10

    .line 96
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v40, v0

    goto/16 :goto_9

    :pswitch_26
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, 0x0

    .line 97
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_5

    :pswitch_27
    move/from16 v47, v8

    move/from16 v46, v10

    .line 98
    invoke-virtual {v7, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v9, v0

    goto/16 :goto_9

    :pswitch_28
    move/from16 v47, v8

    move/from16 v46, v10

    .line 99
    invoke-virtual {v7, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v12, v0

    goto/16 :goto_9

    :pswitch_29
    move/from16 v47, v8

    move/from16 v46, v10

    .line 100
    invoke-virtual {v7, v0, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v13, v0

    goto/16 :goto_9

    :pswitch_2a
    move/from16 v47, v8

    move/from16 v46, v10

    .line 101
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v16, v0

    goto/16 :goto_9

    :pswitch_2b
    move/from16 v47, v8

    move/from16 v46, v10

    .line 102
    invoke-virtual {v7, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v11, v0

    goto/16 :goto_9

    :pswitch_2c
    move/from16 v47, v8

    move/from16 v46, v10

    .line 103
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v17, v0

    goto/16 :goto_9

    :pswitch_2d
    move/from16 v47, v8

    move/from16 v46, v10

    .line 104
    invoke-virtual {v7, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v15, v0

    goto/16 :goto_9

    :pswitch_2e
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, 0x0

    .line 105
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move/from16 v38, v0

    goto/16 :goto_9

    :pswitch_2f
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, 0x0

    .line 106
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move/from16 v37, v0

    goto/16 :goto_9

    :pswitch_30
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, 0x0

    .line 107
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move/from16 v36, v0

    goto/16 :goto_9

    :pswitch_31
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 108
    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v35, v0

    goto/16 :goto_9

    :pswitch_32
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, -0x1

    const/4 v10, 0x0

    .line 109
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v22, v0

    goto/16 :goto_9

    :pswitch_33
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 110
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_5

    :pswitch_34
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v10, 0x0

    .line 112
    invoke-virtual {v7, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v14, v0

    goto/16 :goto_9

    :pswitch_35
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v10, 0x0

    .line 113
    invoke-virtual {v7, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v6, v0

    goto/16 :goto_9

    :pswitch_36
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v10, 0x0

    .line 114
    invoke-virtual {v7, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v3, v0

    goto/16 :goto_9

    :pswitch_37
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v10, 0x0

    .line 115
    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    .line 116
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_5

    :pswitch_38
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, -0x1

    .line 117
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_5

    :pswitch_39
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, -0x1

    .line 118
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_5

    :pswitch_3a
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, -0x1

    .line 119
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_5

    :pswitch_3b
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, -0x1

    .line 120
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_5

    :pswitch_3c
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, -0x1

    .line 121
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_5

    :pswitch_3d
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, -0x1

    .line 122
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_5

    :pswitch_3e
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, -0x1

    .line 123
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_5

    :pswitch_3f
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, -0x1

    .line 124
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_5

    :pswitch_40
    move/from16 v47, v8

    move/from16 v46, v10

    const/4 v8, 0x1

    .line 125
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v8, 0x0

    .line 126
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_5

    :pswitch_41
    move/from16 v47, v8

    move/from16 v46, v10

    const/high16 v8, 0x3f800000    # 1.0f

    .line 127
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_5

    :pswitch_42
    move/from16 v47, v8

    move/from16 v46, v10

    const/high16 v8, 0x3f800000    # 1.0f

    .line 128
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v45, v0

    goto :goto_9

    :pswitch_43
    move/from16 v47, v8

    move/from16 v46, v10

    const/high16 v8, 0x3f800000    # 1.0f

    .line 129
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_9

    :pswitch_44
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v10, v27

    const/high16 v8, 0x3f800000    # 1.0f

    .line 130
    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v27, v0

    :goto_9
    move/from16 v8, v26

    goto/16 :goto_b

    :pswitch_45
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v10, v27

    const/4 v8, -0x1

    .line 131
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    goto :goto_a

    :pswitch_46
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v10, v27

    const/4 v8, -0x1

    .line 132
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_a

    :pswitch_47
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v10, v27

    const/4 v8, -0x1

    .line 133
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_a

    :pswitch_48
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v10, v27

    const/4 v8, -0x1

    .line 134
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_a

    :pswitch_49
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v10, v27

    const/4 v8, 0x1

    .line 135
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_a

    :pswitch_4a
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v10, v27

    const/4 v8, 0x0

    .line 136
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_a

    :pswitch_4b
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v10, v27

    const/4 v8, -0x1

    .line 137
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_a
    move/from16 v27, v6

    move/from16 v6, v24

    move/from16 v8, v26

    move/from16 v24, v33

    move-object/from16 v26, v4

    move/from16 v4, v25

    goto/16 :goto_6

    :pswitch_4c
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v8, v26

    move/from16 v10, v27

    .line 138
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v8, v0

    goto :goto_b

    :pswitch_4d
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v8, v26

    move/from16 v10, v27

    .line 139
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object/from16 v30, v0

    goto :goto_b

    :pswitch_4e
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v8, v26

    move/from16 v10, v27

    .line 140
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object/from16 v29, v0

    :goto_b
    move-object/from16 v26, v4

    move/from16 v4, v25

    goto :goto_c

    :pswitch_4f
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v8, v26

    move/from16 v10, v27

    move-object/from16 v26, v4

    move/from16 v4, v25

    .line 141
    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    move v4, v0

    goto :goto_c

    :pswitch_50
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v8, v26

    move/from16 v10, v27

    move-object/from16 v26, v4

    move/from16 v4, v25

    .line 142
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object/from16 v18, v0

    :goto_c
    move-object/from16 v25, v5

    goto/16 :goto_f

    :pswitch_51
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v8, v26

    move/from16 v10, v27

    move-object/from16 v26, v4

    move/from16 v4, v25

    move-object/from16 v25, v5

    move/from16 v5, v33

    .line 143
    invoke-virtual {v7, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v33, v0

    goto/16 :goto_f

    :pswitch_52
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v8, v26

    move/from16 v10, v27

    move-object/from16 v26, v4

    move/from16 v27, v6

    move/from16 v4, v25

    move/from16 v6, v32

    move-object/from16 v25, v5

    move/from16 v5, v33

    .line 144
    invoke-virtual {v7, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v32, v0

    goto :goto_e

    :pswitch_53
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v8, v26

    move/from16 v10, v27

    move-object/from16 v26, v4

    move/from16 v27, v6

    move/from16 v6, v24

    move/from16 v4, v25

    move-object/from16 v25, v5

    move/from16 v5, v33

    .line 145
    invoke-virtual {v7, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    move/from16 v24, v0

    goto :goto_e

    :pswitch_54
    move/from16 v47, v8

    move/from16 v46, v10

    move/from16 v8, v26

    move/from16 v10, v27

    move-object/from16 v26, v4

    move/from16 v27, v6

    move/from16 v6, v24

    move/from16 v4, v25

    move/from16 v24, v33

    move-object/from16 v25, v5

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    invoke-virtual {v7, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_d
    move/from16 v33, v24

    move/from16 v24, v6

    :goto_e
    move/from16 v6, v27

    move/from16 v27, v10

    :goto_f
    add-int/lit8 v0, v47, 0x1

    move-object/from16 v5, v25

    move/from16 v10, v46

    move/from16 v25, v4

    move-object/from16 v4, v26

    move/from16 v26, v8

    move v8, v0

    goto/16 :goto_4

    :cond_4
    move/from16 v4, v25

    move/from16 v8, v26

    move/from16 v10, v27

    move/from16 v27, v6

    move/from16 v6, v24

    move/from16 v24, v33

    .line 147
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move/from16 v5, v34

    and-int/lit16 v7, v5, 0xfff

    move-object/from16 v20, v0

    const/16 v0, 0x81

    move/from16 v26, v6

    if-ne v7, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_10

    :cond_5
    const/4 v0, 0x0

    :goto_10
    const/16 v6, 0xe1

    move/from16 v28, v4

    if-ne v7, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_11

    :cond_6
    const/4 v6, 0x0

    :goto_11
    const/16 v4, 0x12

    if-ne v7, v4, :cond_7

    const/4 v7, 0x1

    goto :goto_12

    :cond_7
    const/4 v7, 0x0

    :goto_12
    if-eqz v16, :cond_9

    .line 149
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 150
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 151
    iget-object v10, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/method/KeyListener;

    iput-object v9, v10, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 152
    :try_start_3
    iget-object v9, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_8

    goto :goto_13

    :cond_8
    iget-object v5, v9, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v5}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v34

    move/from16 v5, v34

    :goto_13
    iput v5, v9, Landroid/widget/Editor;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1a

    .line 153
    :catch_2
    iget-object v5, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v9, 0x1

    iput v9, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_1a

    :catch_3
    move-exception v0

    .line 154
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    .line 155
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v0

    .line 156
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_9
    if-eqz v17, :cond_b

    .line 157
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 158
    iget-object v9, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v10

    iput-object v10, v9, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 159
    iget-object v9, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_a

    goto :goto_14

    :cond_a
    const/4 v5, 0x1

    :goto_14
    iput v5, v9, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_1a

    :cond_b
    if-eqz v5, :cond_c

    const/4 v4, 0x1

    .line 160
    invoke-direct {v1, v5, v4}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 161
    invoke-static {v5}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v5

    xor-int/2addr v5, v4

    move-object/from16 v9, v20

    goto/16 :goto_1c

    :cond_c
    if-eqz v11, :cond_d

    .line 162
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 163
    iget-object v4, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 164
    iget-object v4, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x3

    iput v5, v4, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_1a

    :cond_d
    if-eqz v15, :cond_12

    .line 165
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 166
    iget-object v4, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    and-int/lit8 v5, v15, 0x2

    if-eqz v5, :cond_e

    const/4 v9, 0x1

    goto :goto_15

    :cond_e
    const/4 v9, 0x0

    :goto_15
    const/4 v10, 0x4

    and-int/lit8 v11, v15, 0x4

    if-eqz v11, :cond_f

    const/4 v10, 0x1

    goto :goto_16

    :cond_f
    const/4 v10, 0x0

    :goto_16
    invoke-static {v9, v10}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v9

    iput-object v9, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v5, :cond_10

    const/16 v4, 0x1002

    goto :goto_17

    :cond_10
    const/4 v4, 0x2

    :goto_17
    if-eqz v11, :cond_11

    or-int/lit16 v4, v4, 0x2000

    .line 167
    :cond_11
    iget-object v5, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput v4, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_1a

    :cond_12
    if-nez v12, :cond_1a

    const/4 v4, -0x1

    if-eq v13, v4, :cond_13

    goto :goto_18

    .line 168
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 169
    iget-object v4, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_14

    const/4 v5, 0x0

    .line 170
    iput-object v5, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/4 v5, 0x0

    .line 171
    iput v5, v4, Landroid/widget/Editor;->mInputType:I

    .line 172
    :cond_14
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 173
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object v9, v4

    goto :goto_1b

    :cond_15
    if-eqz v9, :cond_16

    .line 174
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 175
    iget-object v4, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 176
    iget-object v4, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x1

    iput v5, v4, Landroid/widget/Editor;->mInputType:I

    goto :goto_1a

    :cond_16
    const/4 v5, 0x1

    .line 177
    iget-object v4, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_17

    const/4 v9, 0x0

    iput-object v9, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :cond_17
    if-eqz v10, :cond_19

    if-eq v10, v5, :cond_18

    const/4 v4, 0x2

    goto :goto_1a

    :cond_18
    const/4 v4, 0x2

    .line 178
    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_1b

    :cond_19
    const/4 v4, 0x2

    .line 179
    sget-object v9, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_1b

    :cond_1a
    :goto_18
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v13, v5, :cond_1d

    if-eq v13, v4, :cond_1c

    const/4 v4, 0x3

    if-eq v13, v4, :cond_1b

    .line 180
    sget-object v4, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v5, 0x1

    goto :goto_19

    .line 181
    :cond_1b
    sget-object v4, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    const/16 v5, 0x1001

    goto :goto_19

    .line 182
    :cond_1c
    sget-object v4, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    const/16 v5, 0x2001

    goto :goto_19

    .line 183
    :cond_1d
    sget-object v4, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    const/16 v5, 0x4001

    .line 184
    :goto_19
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 185
    iget-object v9, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {v12, v4}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v4

    iput-object v4, v9, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 186
    iget-object v4, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput v5, v4, Landroid/widget/Editor;->mInputType:I

    :goto_1a
    move-object/from16 v9, v20

    :goto_1b
    move/from16 v5, v27

    .line 187
    :goto_1c
    iget-object v4, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_1e

    invoke-virtual {v4, v3, v0, v6, v7}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    :cond_1e
    if-eqz v14, :cond_1f

    .line 188
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 189
    iget-object v4, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 190
    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    if-ne v9, v4, :cond_1f

    .line 191
    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :cond_1f
    move-object/from16 v4, v39

    move-object/from16 v10, v40

    move-object/from16 v11, v41

    move-object/from16 v12, v42

    .line 192
    invoke-virtual {v1, v4, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v4, v43

    move-object/from16 v10, v44

    .line 193
    invoke-direct {v1, v4, v10}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 195
    invoke-direct {v1, v5}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 196
    invoke-direct {v1, v5, v5, v5}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    if-eqz v5, :cond_20

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_20

    if-gez v8, :cond_20

    const/4 v12, 0x3

    goto :goto_1d

    :cond_20
    move v12, v8

    :goto_1d
    const/4 v2, 0x1

    if-eq v12, v2, :cond_25

    const/4 v4, 0x2

    if-eq v12, v4, :cond_24

    const/4 v4, 0x3

    if-eq v12, v4, :cond_23

    const/4 v5, 0x4

    if-eq v12, v5, :cond_21

    goto :goto_1f

    .line 198
    :cond_21
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 199
    invoke-virtual {v1, v2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v5, 0x0

    .line 200
    iput v5, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_1e

    :cond_22
    const/4 v5, 0x0

    .line 201
    invoke-virtual {v1, v5}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 202
    iput v2, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 203
    :goto_1e
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1f

    .line 204
    :cond_23
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1f

    :cond_24
    const/4 v4, 0x3

    .line 205
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1f

    :cond_25
    const/4 v4, 0x3

    .line 206
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_1f
    if-eqz v18, :cond_26

    goto :goto_20

    :cond_26
    const/high16 v2, -0x1000000

    .line 207
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    :goto_20
    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v2, v29

    .line 208
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v2, v30

    .line 209
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz v28, :cond_27

    move/from16 v2, v28

    .line 210
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_27
    move/from16 v13, v26

    int-to-float v2, v13

    .line 211
    invoke-direct {v1, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    if-eqz v23, :cond_28

    .line 212
    new-instance v2, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_28
    if-nez v3, :cond_2b

    if-nez v0, :cond_2b

    if-nez v6, :cond_2b

    if-eqz v7, :cond_29

    goto :goto_21

    .line 213
    :cond_29
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2a

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, 0xfff

    const/16 v2, 0x81

    if-ne v0, v2, :cond_2a

    goto :goto_22

    :cond_2a
    move/from16 v2, v24

    move-object/from16 v3, v31

    move/from16 v6, v32

    goto :goto_23

    .line 214
    :cond_2b
    :goto_21
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_22
    move v6, v4

    move/from16 v2, v24

    move-object/from16 v3, v31

    .line 215
    :goto_23
    invoke-direct {v1, v3, v6, v2}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    move/from16 v2, v35

    if-eqz v2, :cond_2c

    move/from16 v3, v36

    move/from16 v4, v37

    move/from16 v5, v38

    .line 216
    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_2c
    if-ltz v22, :cond_2d

    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    .line 217
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    move/from16 v3, v22

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_24

    .line 218
    :cond_2d
    sget-object v0, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_24
    move-object/from16 v2, v21

    .line 219
    invoke-virtual {v1, v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    move-object/from16 v2, v45

    if-eqz v2, :cond_2e

    .line 220
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 221
    :cond_2e
    sget-object v0, Li/a;->View:[I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v0, v4, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 222
    iget-object v2, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-eqz v2, :cond_2f

    goto :goto_25

    :cond_2f
    move v2, v10

    goto :goto_26

    :cond_30
    :goto_25
    const/4 v2, 0x1

    .line 223
    :goto_26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v4, v2

    move v5, v4

    move v8, v10

    :goto_27
    if-ge v8, v3, :cond_34

    .line 224
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    const/16 v7, 0x12

    if-eq v6, v7, :cond_33

    const/16 v9, 0x1d

    if-eq v6, v9, :cond_32

    const/16 v9, 0x1e

    if-eq v6, v9, :cond_31

    goto :goto_28

    .line 225
    :cond_31
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    goto :goto_28

    .line 226
    :cond_32
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    goto :goto_28

    .line 227
    :cond_33
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    :goto_28
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 228
    :cond_34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 230
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 231
    invoke-virtual {v1, v5}, Landroid/view/View;->setLongClickable(Z)V

    .line 232
    iget-object v0, v1, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 233
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_36

    const/4 v2, 0x1

    .line 234
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_36
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_54
        :pswitch_d
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
        :pswitch_27
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
        :pswitch_d
        :pswitch_d
        :pswitch_14
        :pswitch_d
        :pswitch_d
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public static synthetic access$1000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method public static synthetic access$400(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Landroid/widget/TextView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Landroid/widget/TextView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private applySingleLine(ZZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_2

    .line 4
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const p1, 0x7fffffff

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private assumeLayout()V
    .locals 8

    .line 1
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v6, v0

    .line 2
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x100000

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v6

    .line 3
    :goto_0
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v7, 0x0

    move-object v1, p0

    move v3, v6

    move-object v4, v5

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    return-void
.end method

.method private bringTextIntoView()Z
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 2
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    .line 4
    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 5
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 6
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 7
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 8
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v9

    .line 9
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v5, v10, :cond_3

    if-ne v6, v3, :cond_2

    .line 10
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 11
    :cond_3
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v5, v10, :cond_5

    if-ne v6, v3, :cond_4

    .line 12
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 13
    :cond_5
    :goto_2
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v5, v10, :cond_7

    .line 14
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    .line 15
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    sub-int v1, v0, v5

    if-ge v1, v7, :cond_6

    add-int/2addr v0, v5

    .line 16
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v7, v7, 0x2

    goto :goto_3

    :cond_6
    if-gez v6, :cond_9

    goto :goto_3

    .line 17
    :cond_7
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_8

    .line 18
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    :goto_3
    sub-int v5, v0, v7

    goto :goto_4

    .line 19
    :cond_8
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v5, v0

    :cond_9
    :goto_4
    if-ge v9, v8, :cond_b

    :cond_a
    move v9, v4

    goto :goto_5

    .line 20
    :cond_b
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    if-ne v0, v2, :cond_a

    sub-int/2addr v9, v8

    .line 21
    :goto_5
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-ne v5, v0, :cond_d

    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-eq v9, v0, :cond_c

    goto :goto_6

    :cond_c
    return v4

    .line 22
    :cond_d
    :goto_6
    invoke-virtual {p0, v5, v9}, Landroid/view/View;->scrollTo(II)V

    return v3
.end method

.method private canMarquee()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v0, v0

    cmpl-float v2, v2, v0

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private canSelectText()Z
    .locals 1

    .line 1
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

.method private checkForRelayout()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v2, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v2, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v2, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_6

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 3
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v4

    .line 4
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    :goto_0
    move v5, v2

    .line 5
    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v8, v2, v3

    const/4 v9, 0x0

    move-object v3, p0

    move-object v6, v7

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6
    iget-object v2, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v3, :cond_5

    .line 7
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_3

    const/4 v1, -0x1

    if-eq v2, v1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 9
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 10
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 11
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 13
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method

.method private checkForResize()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    move v2, v1

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 5
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 7
    iget v0, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v0, :cond_2

    .line 8
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 9
    iget v3, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method private compressText(F)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    .line 2
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    .line 3
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    add-float/2addr v2, v4

    sub-float/2addr v2, p1

    div-float/2addr v2, p1

    cmpl-float p1, v2, v0

    if-lez p1, :cond_1

    const p1, 0x3d8f5c29    # 0.07f

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_1

    .line 4
    iget-object p1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float/2addr v4, v2

    const v0, 0x3ba3d70a    # 0.005f

    sub-float/2addr v4, v0

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 5
    new-instance p1, Landroid/widget/TextView$2;

    invoke-direct {p1, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_1
    return v1
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v0

    .line 5
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 6
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_1

    .line 3
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_1
    const/4 v0, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x17

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0, v1, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p1, p1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v3, p1, Landroid/widget/Editor$InputContentType;->enterDown:Z

    return v2

    .line 8
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v2

    .line 10
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 11
    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 12
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 13
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 14
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_a

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    return v2

    .line 16
    :cond_a
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_d

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_d

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    if-eqz p3, :cond_c

    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 19
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v0, p0, v4, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_b

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    return v2

    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw p1

    :catch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    :cond_c
    move v0, v3

    :goto_1
    if-eqz v0, :cond_d

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 23
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v0, p0, v4, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 25
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    if-eqz v0, :cond_d

    return v3

    .line 26
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_11

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_11

    if-eqz p3, :cond_f

    .line 27
    :try_start_1
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v0, p0, v4, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result p3
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p3, :cond_e

    return v2

    :cond_e
    move p3, v1

    goto :goto_2

    :catch_1
    :cond_f
    move p3, v3

    :goto_2
    if-eqz p3, :cond_11

    .line 28
    iget-object p3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p3, p0, v0, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_10

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result p1

    if-nez p1, :cond_10

    .line 30
    iput-boolean v3, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_10
    const/4 p1, 0x2

    return p1

    .line 31
    :cond_11
    iget-boolean p2, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    if-eqz p2, :cond_12

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result p1

    if-nez p1, :cond_12

    move v1, v2

    :cond_12
    return v1
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    :goto_1
    return-void
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    .line 2
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    const/16 p1, 0x50

    if-eq v0, p1, :cond_2

    .line 4
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result p1

    .line 5
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-ge v1, p1, :cond_2

    const/16 v2, 0x30

    if-ne v0, v2, :cond_1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    :goto_1
    add-int/2addr p1, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v1, p1

    return v1
.end method

.method private getDesiredHeight()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v2, v1}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 5
    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v3, :cond_1

    .line 6
    iget v4, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7
    iget v4, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    add-int/2addr v2, v1

    .line 8
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    if-eqz p2, :cond_4

    .line 9
    iget p2, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v0, p2, :cond_4

    .line 10
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    if-eqz v3, :cond_2

    .line 11
    iget p2, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 12
    iget p2, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_2
    add-int v2, p1, v1

    .line 13
    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    goto :goto_0

    .line 14
    :cond_3
    iget p1, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 15
    :cond_4
    :goto_0
    iget p1, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne p1, v5, :cond_5

    .line 16
    iget p1, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v0, p1, :cond_6

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    iget p2, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr p2, v0

    mul-int/2addr p1, p2

    add-int/2addr v2, p1

    goto :goto_1

    .line 18
    :cond_5
    iget p1, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 19
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    if-nez p2, :cond_0

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 6
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 7
    :pswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 8
    :pswitch_5
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    const v2, 0x800007

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const v1, 0x800003

    if-eq v0, v1, :cond_3

    const v1, 0x800005

    if-eq v0, v1, :cond_2

    .line 9
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 10
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 11
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 12
    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 13
    :cond_5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 14
    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    return-object v0

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

.method private getOffsetAtCoordinate(IF)I
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    return p1
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, v2, :cond_0

    .line 4
    sget-object v0, Li/a;->TextAppearance:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x3

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
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
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 4
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    if-ltz v1, :cond_6

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 5
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-wide v6, v2, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-gez v2, :cond_6

    .line 6
    iget-boolean v2, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 8
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 9
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, v4, v5}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->updateCursorsPositions()V

    .line 11
    iput-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 12
    :cond_2
    iget v1, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    goto :goto_0

    .line 15
    :cond_3
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v4, :cond_5

    .line 16
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v4, :cond_4

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 17
    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 18
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 19
    iput-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 20
    :cond_5
    iget v1, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

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

.method private static isPasswordInputType(I)Z
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

    .line 1
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

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v6, p1

    .line 1
    iget-object v1, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 2
    new-instance v13, Landroid/text/DynamicLayout;

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-nez v1, :cond_0

    move-object/from16 v11, p6

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v11, v1

    :goto_0
    move-object v1, v13

    move/from16 v5, p1

    move-object/from16 v6, p4

    move/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    goto/16 :goto_4

    .line 3
    :cond_1
    sget-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v2, p2

    if-ne v2, v1, :cond_3

    .line 4
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v4, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v1, v2, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    iput-object v1, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_2
    move-object v8, v1

    goto :goto_1

    :cond_3
    move-object v8, v2

    :goto_1
    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-eqz v8, :cond_c

    .line 6
    iget v3, v8, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v3, v6, :cond_6

    if-eqz p6, :cond_4

    move/from16 v13, p3

    if-gt v3, v13, :cond_7

    :cond_4
    if-eqz p7, :cond_5

    .line 7
    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v1, :cond_5

    .line 8
    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move v6, v7

    move v7, v9

    move v9, v10

    invoke-virtual/range {v1 .. v9}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    goto :goto_2

    .line 9
    :cond_5
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v3, p1

    move-object/from16 v4, p4

    move v6, v7

    move-object v7, v8

    move v8, v9

    invoke-static/range {v1 .. v8}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    :goto_2
    move-object v13, v1

    if-eqz p7, :cond_f

    .line 10
    iput-object v13, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_4

    :cond_6
    move/from16 v13, p3

    :cond_7
    if-eqz p5, :cond_9

    if-gt v3, v6, :cond_9

    if-eqz p7, :cond_8

    .line 11
    iget-object v1, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v1, :cond_8

    .line 12
    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move v6, v7

    move v7, v9

    move v9, v10

    move-object/from16 v10, p6

    move/from16 v11, p3

    invoke-virtual/range {v1 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v13

    goto/16 :goto_4

    .line 13
    :cond_8
    iget-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v3, p1

    move-object/from16 v4, p4

    move v6, v7

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, p6

    move/from16 v10, p3

    invoke-static/range {v1 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v13

    goto/16 :goto_4

    :cond_9
    if-eqz p5, :cond_b

    .line 14
    new-instance v15, Landroid/text/StaticLayout;

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    iget v12, v0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v12, v2, :cond_a

    iget v1, v0, Landroid/widget/TextView;->mMaximum:I

    :cond_a
    move v14, v1

    move-object v1, v15

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v12, p6

    move/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    goto :goto_3

    .line 15
    :cond_b
    new-instance v13, Landroid/text/StaticLayout;

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    move-object v1, v13

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-direct/range {v1 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    goto :goto_4

    :cond_c
    move/from16 v13, p3

    if-eqz p5, :cond_e

    .line 16
    new-instance v15, Landroid/text/StaticLayout;

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    iget v12, v0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v12, v2, :cond_d

    iget v1, v0, Landroid/widget/TextView;->mMaximum:I

    :cond_d
    move v14, v1

    move-object v1, v15

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v12, p6

    move/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    :goto_3
    move-object v13, v15

    goto :goto_4

    .line 17
    :cond_e
    new-instance v13, Landroid/text/StaticLayout;

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    move-object v1, v13

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-direct/range {v1 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    :cond_f
    :goto_4
    return-object v13
.end method

.method private nullLayouts()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v1, v0, Landroid/text/BoringLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v1, :cond_0

    .line 2
    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v1, v0, Landroid/text/BoringLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v1, :cond_1

    .line 4
    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6
    iput-object v0, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v0, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 7
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_2
    return-void
.end method

.method private paste(II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, v3}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide p1

    .line 6
    invoke-static {p1, p2}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v2

    .line 7
    invoke-static {p1, p2}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p1

    .line 8
    iget-object p2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p2, Landroid/text/Spannable;

    invoke-static {p2, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 9
    iget-object p2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p2, Landroid/text/Editable;

    invoke-interface {p2, v2, p1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 p2, 0x1

    move v7, p2

    move p2, p1

    move p1, v2

    move v2, v7

    goto :goto_1

    .line 10
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    const-string v6, "\n"

    invoke-interface {v4, v5, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 11
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-interface {v4, v5, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    const-wide/16 p1, 0x0

    .line 13
    sput-wide p1, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    :cond_3
    return-void
.end method

.method private registerForPreDraw()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

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

    instance-of v1, v0, Landroid/text/Editable;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Landroid/text/Editable;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    .line 4
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    aget-object v3, p3, v2

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 6
    aget-object v4, p3, v2

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, p1, :cond_2

    if-ne v3, p2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    aget-object v3, p3, v2

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 1

    .line 1
    const-class v0, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 2
    array-length p2, p1

    :goto_0
    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 3
    aget-object v0, p1, p2

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 3
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    return-void
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p3, p2

    .line 4
    const-class p1, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, p3, p1}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 5
    const-class p1, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, p3, p1}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 6

    .line 5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_4

    .line 6
    iget-object v1, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

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

    iget-object v3, v3, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

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
    .locals 4

    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_1

    .line 19
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_0

    :cond_1
    and-int/lit16 v0, p1, 0x2000

    if-eqz v0, :cond_2

    .line 20
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_0

    :cond_2
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_3

    .line 21
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_0

    .line 22
    :cond_3
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 23
    :goto_0
    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    and-int/lit16 v3, p1, 0x2000

    if-eqz v3, :cond_6

    move v1, v2

    .line 24
    :cond_6
    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    goto :goto_2

    :cond_7
    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    and-int/lit16 v0, p1, 0xff0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    .line 25
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v0

    goto :goto_2

    .line 26
    :cond_8
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v0

    goto :goto_2

    .line 27
    :cond_9
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v0

    goto :goto_2

    :cond_a
    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 28
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v0

    goto :goto_2

    .line 29
    :cond_b
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    .line 30
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    if-eqz p2, :cond_c

    .line 31
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 32
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v0, p1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_3

    .line 33
    :cond_c
    invoke-direct {p0, v0}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    :goto_3
    return-void
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v2, v1, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_0

    const p1, -0x20001

    and-int/2addr p1, v1

    .line 2
    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    :cond_0
    const/high16 p1, 0x20000

    or-int/2addr p1, v1

    .line 3
    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    :cond_1
    :goto_0
    return-void
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v1, p1, :cond_2

    .line 4
    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, p1, Landroid/text/Editable;

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p1, Landroid/text/Editable;

    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_2
    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    .line 1
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v2, :cond_2

    .line 2
    new-instance v2, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v0, v3, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 4
    iget-object v0, v2, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 10
    iput-object p1, v2, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    goto :goto_2

    .line 13
    :cond_3
    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    :goto_2
    if-eqz p2, :cond_4

    .line 14
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p2, v1, v1, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 16
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 17
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 18
    iput-object p2, v2, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    goto :goto_3

    .line 21
    :cond_4
    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 22
    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    :cond_5
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const-string v2, ""

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 7
    :cond_1
    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 8
    :cond_2
    instance-of v4, v3, Landroid/text/Spanned;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Landroid/text/Spanned;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 9
    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {p0, v5}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 11
    iput v6, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0, v6}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 13
    iput v5, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 14
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 15
    :cond_4
    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v4, v4

    move v14, v6

    :goto_2
    if-ge v14, v4, :cond_6

    .line 16
    iget-object v7, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v7, v7, v14

    const/4 v9, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sget-object v11, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-interface/range {v7 .. v13}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object v3, v7

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_8

    .line 17
    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 18
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 19
    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-direct {p0, v4, v6, v2, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_3

    .line 20
    :cond_7
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {p0, v2, v6, v6, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_8
    move/from16 v2, p4

    .line 21
    :goto_3
    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    move v5, v6

    .line 22
    :goto_4
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-eq v1, v4, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v7

    if-nez v7, :cond_d

    if-eqz v5, :cond_a

    goto :goto_6

    .line 23
    :cond_a
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    if-eq v1, v7, :cond_c

    iget-object v7, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_b

    goto :goto_5

    .line 24
    :cond_b
    instance-of v7, v3, Landroid/widget/TextView$CharWrapper;

    if-nez v7, :cond_e

    .line 25
    invoke-static {v3}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_7

    .line 26
    :cond_c
    :goto_5
    iget-object v7, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v7, v3}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    goto :goto_7

    .line 27
    :cond_d
    :goto_6
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 28
    iget-object v7, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    invoke-virtual {v7, v3}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    .line 29
    iget-object v7, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v3, v7}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 30
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 31
    invoke-virtual {v7, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 32
    :cond_e
    :goto_7
    iget v7, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v7, :cond_13

    if-eq v1, v4, :cond_10

    .line 33
    instance-of v7, v3, Landroid/text/Spannable;

    if-eqz v7, :cond_f

    goto :goto_8

    .line 34
    :cond_f
    iget-object v7, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v7, v3}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v7

    goto :goto_9

    .line 35
    :cond_10
    :goto_8
    move-object v7, v3

    check-cast v7, Landroid/text/Spannable;

    .line 36
    :goto_9
    iget v8, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    invoke-static {v7, v8}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v8

    if-eqz v8, :cond_13

    if-ne v1, v4, :cond_11

    move-object v1, v4

    goto :goto_a

    .line 37
    :cond_11
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 38
    :goto_a
    iput-object v7, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 39
    iget-boolean v3, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v3

    if-nez v3, :cond_12

    .line 40
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_12
    move-object v3, v7

    .line 41
    :cond_13
    iput-object v1, v0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 42
    iput-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 43
    iget-object v1, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v1, :cond_14

    .line 44
    iput-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto :goto_b

    .line 45
    :cond_14
    invoke-interface {v1, v3, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 46
    :goto_b
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 47
    instance-of v4, v3, Landroid/text/Spannable;

    if-eqz v4, :cond_19

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v4, :cond_19

    .line 48
    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    .line 49
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v4, v6, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/widget/TextView$ChangeWatcher;

    .line 50
    array-length v8, v7

    move v9, v6

    :goto_c
    if-ge v9, v8, :cond_15

    .line 51
    aget-object v10, v7, v9

    invoke-interface {v4, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 52
    :cond_15
    iget-object v7, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v7, :cond_16

    new-instance v7, Landroid/widget/TextView$ChangeWatcher;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v7, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 53
    :cond_16
    iget-object v7, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const v8, 0x640012

    invoke-interface {v4, v7, v6, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 54
    iget-object v7, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_17

    invoke-virtual {v7, v4}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    .line 55
    :cond_17
    iget-object v7, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v7, :cond_18

    const/16 v8, 0x12

    .line 56
    invoke-interface {v4, v7, v6, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 57
    :cond_18
    iget-object v7, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_19

    .line 58
    invoke-interface {v7, p0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 59
    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_19

    iput-boolean v6, v4, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 60
    :cond_19
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_1a

    .line 61
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 62
    :cond_1a
    invoke-virtual {p0, v3, v6, v2, v1}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 63
    invoke-virtual {p0, v3, v6, v2, v1}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v1, 0x2

    .line 64
    invoke-virtual {p0, v1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    if-eqz v5, :cond_1b

    .line 65
    check-cast v3, Landroid/text/Editable;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 66
    :cond_1b
    iget-object v1, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1c
    return-void
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 4
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 5
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v0, 0xf

    if-ne v3, v2, :cond_3

    and-int/lit16 v0, v0, 0xff0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    .line 1
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

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "speak_password"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private startMarquee()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 6
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7
    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_5

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 13
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    :cond_6
    return-void
.end method

.method private startStopMarquee(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopMarquee()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 3
    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 5
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private updateTextColors()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2
    iget v1, p0, Landroid/widget/TextView;->mCurTextColor:I

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 6
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, v4, Landroid/text/TextPaint;->linkColor:I

    if-eq v1, v5, :cond_1

    .line 7
    iput v1, v4, Landroid/text/TextPaint;->linkColor:I

    move v0, v3

    .line 8
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 10
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 11
    iput v1, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    if-eqz v3, :cond_4

    .line 12
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/TextView$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "textservices"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textservice/SpellCheckerSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    iput v1, v0, Landroid/widget/TextView;->mDeferScroll:I

    return v3

    .line 3
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    :goto_0
    if-nez v2, :cond_2

    return v3

    .line 4
    :cond_2
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 5
    sget-object v5, Landroid/widget/TextView$4;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v7, :cond_6

    if-eq v5, v6, :cond_5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_4

    const/4 v8, 0x4

    if-eq v5, v8, :cond_3

    move v5, v3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    neg-int v5, v5

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    goto :goto_1

    :cond_5
    const/4 v5, -0x1

    goto :goto_1

    :cond_6
    move v5, v7

    :goto_1
    if-lez v5, :cond_7

    move v8, v7

    goto :goto_2

    :cond_7
    move v8, v3

    .line 8
    :goto_2
    invoke-virtual {v2, v1, v8}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v1

    float-to-int v1, v1

    .line 9
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    add-int/lit8 v9, v4, 0x1

    .line 10
    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 11
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v10, v10

    .line 12
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v11, v11

    .line 13
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    .line 14
    iget v12, v0, Landroid/view/View;->mRight:I

    iget v13, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    .line 15
    iget v13, v0, Landroid/view/View;->mBottom:I

    iget v14, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    .line 16
    iget-boolean v14, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-nez v14, :cond_8

    sub-int v14, v11, v10

    if-le v14, v12, :cond_8

    if-le v11, v1, :cond_8

    add-int v11, v10, v12

    .line 17
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_8
    sub-int v14, v9, v8

    .line 18
    div-int/2addr v14, v6

    .line 19
    div-int/lit8 v15, v13, 0x4

    if-le v14, v15, :cond_9

    goto :goto_3

    :cond_9
    move v15, v14

    .line 20
    :goto_3
    div-int/lit8 v3, v12, 0x4

    if-le v14, v3, :cond_a

    move v14, v3

    .line 21
    :cond_a
    iget v3, v0, Landroid/view/View;->mScrollX:I

    .line 22
    iget v7, v0, Landroid/view/View;->mScrollY:I

    sub-int v6, v8, v7

    if-ge v6, v15, :cond_b

    sub-int v6, v8, v15

    move/from16 v16, v4

    goto :goto_4

    :cond_b
    move/from16 v16, v4

    move v6, v7

    :goto_4
    sub-int v4, v9, v6

    sub-int v15, v13, v15

    if-le v4, v15, :cond_c

    sub-int v6, v9, v15

    :cond_c
    sub-int v4, v2, v6

    if-ge v4, v13, :cond_d

    sub-int v6, v2, v13

    :cond_d
    rsub-int/lit8 v2, v6, 0x0

    if-lez v2, :cond_e

    const/4 v6, 0x0

    :cond_e
    if-eqz v5, :cond_10

    sub-int v2, v1, v3

    if-ge v2, v14, :cond_f

    sub-int v2, v1, v14

    goto :goto_5

    :cond_f
    move v2, v3

    :goto_5
    sub-int v4, v1, v2

    sub-int v13, v12, v14

    if-le v4, v13, :cond_11

    sub-int v2, v1, v13

    goto :goto_6

    :cond_10
    move v2, v3

    :cond_11
    :goto_6
    if-gez v5, :cond_13

    sub-int v4, v10, v2

    if-lez v4, :cond_12

    goto :goto_7

    :cond_12
    move v10, v2

    :goto_7
    sub-int v2, v11, v10

    if-ge v2, v12, :cond_1d

    :goto_8
    sub-int v10, v11, v12

    goto :goto_9

    :cond_13
    if-lez v5, :cond_16

    sub-int v4, v11, v2

    if-ge v4, v12, :cond_14

    sub-int v2, v11, v12

    :cond_14
    sub-int v4, v10, v2

    if-lez v4, :cond_15

    goto :goto_9

    :cond_15
    move v10, v2

    goto :goto_9

    :cond_16
    sub-int v4, v11, v10

    if-gt v4, v12, :cond_17

    sub-int/2addr v12, v4

    const/4 v2, 0x2

    .line 23
    div-int/2addr v12, v2

    sub-int/2addr v10, v12

    goto :goto_9

    :cond_17
    sub-int v4, v11, v14

    if-le v1, v4, :cond_18

    goto :goto_8

    :cond_18
    add-int v4, v10, v14

    if-ge v1, v4, :cond_19

    goto :goto_9

    :cond_19
    if-le v10, v2, :cond_1a

    goto :goto_9

    :cond_1a
    add-int v4, v2, v12

    if-ge v11, v4, :cond_1b

    goto :goto_8

    :cond_1b
    sub-int v4, v1, v2

    if-ge v4, v14, :cond_1c

    sub-int v2, v1, v14

    :cond_1c
    move v10, v2

    sub-int v2, v1, v10

    sub-int/2addr v12, v14

    if-le v2, v12, :cond_1d

    sub-int v10, v1, v12

    :cond_1d
    :goto_9
    if-ne v10, v3, :cond_1f

    if-eq v6, v7, :cond_1e

    goto :goto_a

    :cond_1e
    const/4 v3, 0x0

    goto :goto_d

    .line 24
    :cond_1f
    :goto_a
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-nez v2, :cond_20

    .line 25
    invoke-virtual {v0, v10, v6}, Landroid/view/View;->scrollTo(II)V

    goto :goto_c

    .line 26
    :cond_20
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroid/widget/TextView;->mLastScroll:J

    sub-long/2addr v2, v4

    .line 27
    iget v4, v0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v10, v4

    .line 28
    iget v5, v0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v6, v5

    const-wide/16 v11, 0xfa

    cmp-long v2, v2, v11

    if-lez v2, :cond_21

    .line 29
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4, v5, v10, v6}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 30
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->awakenScrollBars(I)Z

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_b

    .line 32
    :cond_21
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_22

    .line 33
    iget-object v2, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 34
    :cond_22
    invoke-virtual {v0, v10, v6}, Landroid/view/View;->scrollBy(II)V

    .line 35
    :goto_b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/TextView;->mLastScroll:J

    :goto_c
    const/4 v3, 0x1

    .line 36
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 37
    iget-object v2, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_23

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 38
    :cond_23
    iget-object v2, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v1, -0x2

    const/4 v5, 0x2

    add-int/2addr v1, v5

    invoke-virtual {v2, v4, v8, v1, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 40
    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/View;->mScrollX:I

    iget v4, v0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 41
    iget-object v1, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v7, 0x1

    goto :goto_e

    :cond_24
    move v7, v3

    :goto_e
    return v7
.end method

.method public canCopy()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public canCut()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public canPaste()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

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
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    :cond_0
    return-void
.end method

.method public clearComposingText()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    :goto_0
    return v0

    .line 3
    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollY:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 1
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

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public convertToLocalHorizontalCoordinate(F)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method public debug(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 2
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "frame={"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} scroll={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "} "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mText=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mLayout width="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mText=NULL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "View"

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteText_internal(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .line 1
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

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 2
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    return-void
.end method

.method public drawableStateChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 4
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 6
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8
    :cond_4
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 10
    :cond_5
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 12
    :cond_6
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 13
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 14
    :cond_7
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 15
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 16
    :cond_8
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 17
    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .line 1
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
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result p1

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
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x30

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5
    :goto_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getBottomPaddingOffset()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v1, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v0, :cond_0

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v4

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v4, v5, v3

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v3, v5, v2

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v1

    return-object v5

    :cond_0
    new-array v0, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v5, v0, v4

    aput-object v5, v0, v3

    aput-object v5, v0, v2

    aput-object v5, v0, v1

    return-object v0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v0, :cond_0

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v4

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v4, v5, v3

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v3, v5, v2

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v1

    return-object v5

    :cond_0
    new-array v0, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v5, v0, v4

    aput-object v5, v0, v3

    aput-object v5, v0, v2

    aput-object v5, v0, v1

    return-object v0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v0

    return v1

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getCompoundPaddingEnd()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v0

    return v1

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v0

    return v1

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getCompoundPaddingStart()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v0

    return v1

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .line 1
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

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .line 1
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

    .line 1
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

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 1
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

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 8
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v3, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    if-lt v0, v2, :cond_2

    return v1

    .line 9
    :cond_2
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-ne v3, v4, :cond_3

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    :cond_3
    const/16 v4, 0x50

    if-ne v3, v4, :cond_4

    return v1

    :cond_4
    sub-int/2addr v2, v0

    .line 10
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    return v1
.end method

.method public getExtendedPaddingTop()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 8
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v3, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    if-lt v1, v2, :cond_2

    return v0

    .line 9
    :cond_2
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-ne v3, v4, :cond_3

    return v0

    :cond_3
    const/16 v4, 0x50

    if-ne v3, v4, :cond_4

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    return v0

    :cond_4
    sub-int/2addr v2, v1

    .line 10
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    return v0
.end method

.method public getFadeHeight(Z)I
    .locals 0

    .line 1
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

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x30

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result p1

    add-int/2addr v1, p1

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-gez v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_6

    if-lt v1, v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 7
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 8
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 9
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_3

    .line 10
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 11
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 12
    :cond_3
    iget-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v3, :cond_5

    .line 13
    iget-object v3, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v3, :cond_4

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 14
    :cond_4
    iget-object v3, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 15
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v0, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 16
    iput-boolean v2, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 17
    :cond_5
    sget-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 19
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 20
    iget v0, v1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 21
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 22
    :cond_6
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 23
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 24
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 25
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x4

    .line 26
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 27
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 29
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_7

    .line 30
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 31
    :cond_7
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    .line 33
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getFreezesText()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintLayout()Landroid/text/Layout;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
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

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getImeActionId()I
    .locals 1

    .line 1
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

    .line 1
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

.method public getImeOptions()I
    .locals 1

    .line 1
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

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v2, :cond_2

    if-nez p1, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_4

    if-nez p1, :cond_3

    return-object v1

    .line 6
    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 7
    :cond_4
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object p1, p1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object p1, p1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    return-object p1
.end method

.method public getInputType()I
    .locals 1

    .line 1
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
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spannable;

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    return-object p1

    .line 9
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object p1

    return-object p1
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .line 1
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

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public getLeftFadingEdgeStrength()F
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :cond_0
    return v2

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 9
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v3, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v3, 0x7

    and-int/2addr v0, v3

    const/4 v4, 0x0

    if-eq v0, v1, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    const/4 v5, 0x5

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v1

    goto :goto_0

    :cond_3
    return v2

    .line 11
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    return v2

    .line 12
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v1

    goto :goto_0

    .line 13
    :cond_6
    :goto_1
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v0

    return v0
.end method

.method public getLeftPaddingOffset()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLineAtCoordinate(F)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    return p1
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return p1

    .line 3
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    .line 5
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    add-int/2addr p1, v0

    return p1
.end method

.method public getLineCount()I
    .locals 1

    .line 1
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

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lu/d;->a(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .locals 2

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result p2

    .line 3
    invoke-direct {p0, p2, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result p1

    return p1
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .line 1
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
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_5

    iget v0, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v0

    sub-float/2addr v1, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 9
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v2, 0x7

    and-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_1
    return v3

    .line 10
    :cond_2
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 11
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    return v3

    .line 14
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 15
    :cond_5
    :goto_1
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v0

    return v0
.end method

.method public getRightPaddingOffset()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget v1, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .line 1
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

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v0, v0, Landroid/graphics/Paint;->shadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    .line 1
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

    .line 1
    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    if-eqz v1, :cond_2

    .line 5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    :goto_1
    return-object v0

    .line 6
    :cond_3
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-object v0

    .line 7
    :cond_4
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v0

    .line 8
    :cond_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v0

    .line 9
    :cond_6
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .line 1
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

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTopPaddingOffset()I
    .locals 2

    .line 1
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

    .line 1
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

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    :goto_0
    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v1, v2, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    return-object v0

    :cond_0
    new-array v0, v2, [Landroid/text/style/URLSpan;

    return-object v0
.end method

.method public getVerticalOffset(Z)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    .line 2
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    const/16 p1, 0x30

    if-eq v0, p1, :cond_2

    .line 4
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result p1

    .line 5
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-ge v1, p1, :cond_2

    const/16 v2, 0x50

    if-ne v0, v2, :cond_1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    :cond_2
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 5
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_3

    .line 6
    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    add-int v1, p2, p3

    .line 7
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 10
    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 11
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasSelection()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

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
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 5
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mCursorCount:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 6
    sget-object v2, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    move v4, v5

    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 8
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    int-to-float v0, v0

    .line 9
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->floor(F)F

    move-result v3

    float-to-int v3, v3

    int-to-float v1, v1

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v1

    sub-float/2addr v5, v4

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v6

    add-float/2addr v0, v4

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v6

    add-float/2addr v1, v4

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v3, v5, v0, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 10
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v4, v2, Landroid/widget/Editor;->mCursorCount:I

    if-ge v3, v4, :cond_3

    .line 12
    iget-object v2, v2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 13
    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v4, v5, v6, v2}, Landroid/view/View;->invalidate(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 4
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 5
    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v3, :cond_3

    .line 6
    iget-object v4, v3, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    .line 9
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    sub-int/2addr v5, p1

    .line 10
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v1, v4

    .line 11
    iget v3, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    :goto_0
    add-int/2addr p1, v5

    :goto_1
    add-int/2addr v2, p1

    goto :goto_2

    .line 12
    :cond_0
    iget-object v4, v3, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    .line 15
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    sub-int/2addr v5, p1

    .line 16
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v4, v6

    iget v6, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v4, v6

    add-int/2addr v1, v4

    .line 17
    iget v3, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 18
    :cond_1
    iget-object v4, v3, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_2

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    .line 21
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    sub-int/2addr v5, p1

    .line 22
    iget v3, v3, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p1, v5

    add-int/2addr v1, p1

    .line 23
    iget p1, p0, Landroid/view/View;->mPaddingTop:I

    goto :goto_1

    .line 24
    :cond_2
    iget-object v4, v3, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v4, :cond_3

    .line 25
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p1

    .line 26
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    .line 27
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    sub-int/2addr v5, p1

    .line 28
    iget v4, v3, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p1, v5

    add-int/2addr v1, p1

    .line 29
    iget p1, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr p1, v4

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr p1, v4

    iget v3, v3, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr p1, v3

    goto :goto_1

    .line 30
    :cond_3
    :goto_2
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, p1, v3, v4, v0}, Landroid/view/View;->invalidate(IIII)V

    :cond_4
    return-void
.end method

.method public invalidateRegion(IIZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    if-lez v0, :cond_1

    .line 5
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    :cond_1
    if-ne p1, p2, :cond_2

    move v2, v0

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 7
    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    if-eqz p3, :cond_3

    .line 8
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 9
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v6, v5, Landroid/widget/Editor;->mCursorCount:I

    if-ge v4, v6, :cond_3

    .line 10
    iget-object v5, v5, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 11
    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 12
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int/2addr v5, v6

    if-ne v0, v2, :cond_4

    if-nez p3, :cond_4

    .line 15
    iget-object p3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    float-to-int p1, p1

    .line 16
    iget-object p3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {p3, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p2

    float-to-double p2, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v6

    double-to-int p2, p2

    add-int/2addr p1, v4

    add-int/2addr p2, v4

    move v4, p1

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result p2

    sub-int p2, p1, p2

    .line 18
    :goto_2
    iget p1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, p1

    add-int/2addr v1, v5

    add-int/2addr p1, p2

    add-int/2addr v5, v3

    invoke-virtual {p0, v4, v1, p1, v5}, Landroid/view/View;->invalidate(IIII)V

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

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    :goto_0
    return v0
.end method

.method public isInBatchEditMode()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v2, :cond_2

    .line 3
    iget v0, v2, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 4
    :cond_2
    iget-boolean v0, v0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaddingOffsetRequired()Z
    .locals 2

    .line 1
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

.method public isSingleLine()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v2, v0, 0xf

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/high16 v2, 0x80000

    and-int/2addr v2, v0

    if-lez v2, :cond_2

    return v1

    :cond_2
    and-int/lit16 v0, v0, 0xff0

    if-eqz v0, :cond_3

    const/16 v2, 0x30

    if-eq v0, v2, :cond_3

    const/16 v2, 0x50

    if-eq v0, v2, :cond_3

    const/16 v2, 0x40

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa0

    if-ne v0, v2, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    return v1
.end method

.method public isTextEditable()Z
    .locals 1

    .line 1
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

    .line 1
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
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 11
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 13
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_5
    return-void
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 26

    move-object/from16 v8, p0

    move/from16 v15, p5

    .line 1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 2
    iget v0, v8, Landroid/widget/TextView;->mMaximum:I

    iput v0, v8, Landroid/widget/TextView;->mOldMaximum:I

    .line 3
    iget v0, v8, Landroid/widget/TextView;->mMaxMode:I

    iput v0, v8, Landroid/widget/TextView;->mOldMaxMode:I

    const/4 v14, 0x1

    .line 4
    iput-boolean v14, v8, Landroid/widget/TextView;->mHighlightPathBogus:Z

    const/4 v13, 0x0

    if-gez p1, :cond_0

    move v9, v13

    goto :goto_0

    :cond_0
    move/from16 v9, p1

    :goto_0
    if-gez p2, :cond_1

    move v10, v13

    goto :goto_1

    :cond_1
    move/from16 v10, p2

    .line 5
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v12

    .line 6
    iget-boolean v0, v8, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_3

    iget-object v0, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v12, v0, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v12, v0, :cond_3

    :cond_2
    move/from16 v25, v14

    goto :goto_2

    :cond_3
    move/from16 v25, v13

    :goto_2
    if-eqz v25, :cond_4

    .line 7
    iget-object v0, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    move v11, v0

    goto :goto_3

    :cond_4
    move v11, v13

    .line 8
    :goto_3
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-nez v0, :cond_5

    move/from16 v16, v14

    goto :goto_4

    :cond_5
    move/from16 v16, v13

    .line 9
    :goto_4
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v7, :cond_6

    iget v1, v8, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v1, :cond_6

    move/from16 v17, v14

    goto :goto_5

    :cond_6
    move/from16 v17, v13

    :goto_5
    if-ne v0, v7, :cond_7

    .line 10
    iget v1, v8, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v14, :cond_7

    .line 11
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    :cond_7
    move-object v6, v0

    .line 12
    iget-object v0, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v0, :cond_8

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 14
    :cond_8
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v0, :cond_9

    move/from16 v18, v14

    goto :goto_6

    :cond_9
    move/from16 v18, v13

    :goto_6
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object v4, v12

    move/from16 v5, v16

    move-object/from16 p1, v6

    move-object v14, v7

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v17, :cond_c

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_a

    .line 15
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v6, v1

    goto :goto_7

    :cond_a
    move-object v6, v14

    .line 16
    :goto_7
    iget-object v1, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v1, :cond_b

    const/4 v7, 0x1

    goto :goto_8

    :cond_b
    move v7, v13

    :goto_8
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object v4, v12

    move/from16 v5, v16

    invoke-direct/range {v0 .. v7}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 17
    :cond_c
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    move v0, v13

    :goto_9
    const/4 v1, 0x0

    .line 18
    iput-object v1, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 19
    iget-object v1, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_e

    move v2, v9

    goto :goto_a

    :cond_e
    move v2, v10

    .line 20
    :goto_a
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v4, p4

    if-ne v4, v3, :cond_10

    .line 21
    iget-object v3, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v5, v8, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v1, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 22
    iput-object v1, v8, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_f
    move-object v6, v1

    goto :goto_b

    :cond_10
    move-object v6, v4

    :goto_b
    if-eqz v6, :cond_18

    .line 23
    iget v3, v6, Landroid/text/BoringLayout$Metrics;->width:I

    if-gt v3, v2, :cond_13

    if-eqz v0, :cond_11

    if-gt v3, v15, :cond_13

    .line 24
    :cond_11
    iget-object v0, v8, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v0, :cond_12

    .line 25
    iget-object v1, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v3, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v5, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v7, v8, Landroid/widget/TextView;->mIncludePad:Z

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v19, v2

    move-object/from16 v20, v12

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_c

    .line 26
    :cond_12
    iget-object v0, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v1, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v5, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v7, v8, Landroid/widget/TextView;->mIncludePad:Z

    move-object v3, v12

    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 27
    :goto_c
    iget-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, v8, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    goto/16 :goto_f

    :cond_13
    if-eqz v0, :cond_15

    if-gt v3, v2, :cond_15

    .line 28
    iget-object v9, v8, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v9, :cond_14

    .line 29
    iget-object v10, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v0, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v3, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v4, v8, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v5, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move v7, v11

    move-object v11, v0

    move-object/from16 v19, v12

    move v12, v2

    move v0, v13

    move-object/from16 v13, v19

    move/from16 v24, v7

    move-object v2, v14

    const/4 v7, 0x1

    move v14, v1

    move v1, v15

    move v15, v3

    move-object/from16 v16, v6

    move/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, p5

    invoke-virtual/range {v9 .. v19}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v3

    iput-object v3, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move v4, v1

    move-object v3, v2

    goto/16 :goto_10

    :cond_14
    move/from16 v24, v11

    move-object/from16 v19, v12

    move v0, v13

    move-object v3, v14

    move v1, v15

    const/4 v7, 0x1

    .line 30
    iget-object v9, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v10, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v13, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v14, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v4, v8, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v5, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move v11, v2

    move-object v15, v6

    move/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, p5

    invoke-static/range {v9 .. v18}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    iput-object v2, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move v4, v1

    goto/16 :goto_10

    :cond_15
    move/from16 v24, v11

    move-object/from16 v19, v12

    move v5, v13

    move-object v3, v14

    move v4, v15

    const/4 v7, 0x1

    if-eqz v0, :cond_17

    .line 31
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v10, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    iget-object v13, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v15, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v14, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, v8, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v1, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget v5, v8, Landroid/widget/TextView;->mMaxMode:I

    if-ne v5, v7, :cond_16

    iget v5, v8, Landroid/widget/TextView;->mMaximum:I

    move/from16 v22, v5

    move v5, v9

    goto :goto_d

    :cond_16
    move v5, v9

    const v22, 0x7fffffff

    :goto_d
    move-object v9, v0

    move/from16 v18, v14

    move v14, v2

    move v2, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    move/from16 v17, v2

    move/from16 v19, v5

    move-object/from16 v20, v1

    move/from16 v21, p5

    invoke-direct/range {v9 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_10

    .line 32
    :cond_17
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v5, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, v8, Landroid/widget/TextView;->mIncludePad:Z

    move-object v15, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move/from16 v18, v2

    move-object/from16 v20, v6

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v15 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_10

    :cond_18
    move/from16 v24, v11

    move-object/from16 v19, v12

    move-object v3, v14

    move v4, v15

    const/4 v7, 0x1

    if-eqz v0, :cond_1a

    .line 33
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v10, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    iget-object v13, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v5, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v6, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v15, v8, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v14, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget v9, v8, Landroid/widget/TextView;->mMaxMode:I

    if-ne v9, v7, :cond_19

    iget v9, v8, Landroid/widget/TextView;->mMaximum:I

    move/from16 v22, v9

    goto :goto_e

    :cond_19
    const v22, 0x7fffffff

    :goto_e
    move-object v9, v0

    move-object/from16 v20, v14

    move v14, v2

    move v2, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v2

    move/from16 v21, p5

    invoke-direct/range {v9 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_10

    .line 34
    :cond_1a
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, v8, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v5, v8, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, v8, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, v8, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, v8, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, v8, Landroid/widget/TextView;->mIncludePad:Z

    move-object v15, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move/from16 v18, v2

    move-object/from16 v20, v6

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v15 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    iput-object v0, v8, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_10

    :cond_1b
    :goto_f
    move/from16 v24, v11

    move-object v3, v14

    move v4, v15

    const/4 v7, 0x1

    :goto_10
    if-nez p6, :cond_1c

    if-eqz v25, :cond_1d

    .line 35
    iget-object v0, v8, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    move/from16 v13, v24

    if-eq v13, v0, :cond_1d

    .line 36
    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 37
    :cond_1d
    iget-object v0, v8, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v3, :cond_1f

    int-to-float v0, v4

    .line 38
    invoke-direct {v8, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 39
    iget-object v0, v8, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1e

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 40
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_11

    .line 41
    :cond_1e
    iput-boolean v7, v8, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 42
    :cond_1f
    :goto_11
    iget-object v0, v8, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_20
    return-void
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 5
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 6
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 7
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v6, v4, v3

    .line 8
    div-int/lit8 v7, v6, 0x2

    .line 9
    div-int/lit8 v8, v5, 0x4

    if-le v7, v8, :cond_2

    move v7, v8

    .line 10
    :cond_2
    iget v8, p0, Landroid/view/View;->mScrollY:I

    add-int v9, v8, v7

    if-ge v3, v9, :cond_3

    .line 11
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/2addr v9, v6

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    goto :goto_0

    :cond_3
    add-int/2addr v5, v8

    sub-int/2addr v5, v7

    if-le v4, v5, :cond_4

    .line 12
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 13
    :cond_4
    :goto_0
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 14
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 15
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    int-to-float v6, v4

    invoke-virtual {v5, v2, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 16
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v6, v2, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    if-ge v5, v2, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-le v5, v2, :cond_6

    goto :goto_2

    :cond_6
    move v5, v2

    :goto_2
    if-ge v0, v3, :cond_7

    goto :goto_3

    :cond_7
    if-le v0, v5, :cond_8

    move v3, v5

    goto :goto_3

    :cond_8
    move v3, v0

    :goto_3
    if-eq v3, v0, :cond_9

    .line 17
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 1
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

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 4
    sget-object v0, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 7
    aget v3, p1, v2

    const v4, 0x10100a7

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, -0x1

    .line 8
    new-array v3, v3, [I

    .line 9
    invoke-static {p1, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 10
    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    .line 5
    iget v1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6
    iget-object v1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 8
    iget v1, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 9
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_0
    const/16 v0, 0x82

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x8000000

    if-eqz v0, :cond_1

    .line 12
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    const/16 v0, 0x21

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 15
    :cond_2
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v0, 0xff

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_4

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x5

    .line 16
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    :cond_3
    or-int/lit8 v0, v0, 0x6

    .line 17
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 18
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 20
    :cond_4
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 22
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 23
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_6

    .line 24
    new-instance v0, Lcom/android/internal/widget/b;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/b;-><init>(Landroid/widget/TextView;)V

    .line 25
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 26
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    return-object v0

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 6
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    :cond_1
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    :cond_2
    return v1

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p1

    .line 5
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v1

    .line 6
    :cond_4
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 2
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    .line 7
    iget v5, v0, Landroid/view/View;->mScrollX:I

    .line 8
    iget v6, v0, Landroid/view/View;->mScrollY:I

    .line 9
    iget v8, v0, Landroid/view/View;->mRight:I

    .line 10
    iget v9, v0, Landroid/view/View;->mLeft:I

    .line 11
    iget v10, v0, Landroid/view/View;->mBottom:I

    .line 12
    iget v11, v0, Landroid/view/View;->mTop:I

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v12

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    move-result v13

    if-eqz v12, :cond_0

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    move v15, v13

    :goto_0
    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 15
    :goto_1
    iget-object v14, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v14, :cond_5

    sub-int v16, v10, v11

    sub-int v16, v16, v4

    sub-int v16, v16, v2

    sub-int v17, v8, v9

    sub-int v17, v17, v3

    sub-int v17, v17, v1

    move/from16 v18, v12

    .line 16
    iget-object v12, v14, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 18
    iget v12, v0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v12, v5

    add-int/2addr v12, v15

    int-to-float v12, v12

    add-int v15, v6, v2

    move/from16 v19, v3

    iget v3, v14, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v3, v16, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v15, v3

    int-to-float v3, v15

    invoke-virtual {v7, v12, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    iget-object v3, v14, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_2
    move/from16 v19, v3

    .line 21
    :goto_2
    iget-object v3, v14, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v3, v5, v8

    sub-int/2addr v3, v9

    .line 23
    iget v12, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v3, v12

    iget v12, v14, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v3, v12

    sub-int/2addr v3, v13

    int-to-float v3, v3

    add-int v12, v6, v2

    iget v13, v14, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v16, v16, v13

    div-int/lit8 v16, v16, 0x2

    add-int v12, v12, v16

    int-to-float v12, v12

    invoke-virtual {v7, v3, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    iget-object v3, v14, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 26
    :cond_3
    iget-object v3, v14, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v3, v5, v1

    .line 28
    iget v12, v14, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v12, v17, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v3, v12

    int-to-float v3, v3

    iget v12, v0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v12, v6

    int-to-float v12, v12

    invoke-virtual {v7, v3, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    iget-object v3, v14, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    :cond_4
    iget-object v3, v14, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v3, v5, v1

    .line 33
    iget v12, v14, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v17, v17, v12

    div-int/lit8 v17, v17, 0x2

    add-int v3, v3, v17

    int-to-float v3, v3

    add-int v12, v6, v10

    sub-int/2addr v12, v11

    iget v13, v0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v12, v13

    iget v13, v14, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v7, v3, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    iget-object v3, v14, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_5
    move/from16 v19, v3

    move/from16 v18, v12

    .line 36
    :cond_6
    :goto_3
    iget v3, v0, Landroid/widget/TextView;->mCurTextColor:I

    .line 37
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_7

    .line 38
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 39
    :cond_7
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 40
    iget-object v13, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v13, :cond_9

    iget-object v13, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_9

    .line 41
    iget-object v12, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_8

    .line 42
    iget v3, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 43
    :cond_8
    iget-object v12, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 44
    :cond_9
    iget-object v13, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v13

    iput-object v13, v3, Landroid/text/TextPaint;->drawableState:[I

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v13

    .line 49
    iget v14, v0, Landroid/view/View;->mBottom:I

    iget v15, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v14, v15

    sub-int/2addr v14, v4

    sub-int/2addr v14, v2

    .line 50
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v14

    add-int v4, v1, v5

    int-to-float v4, v4

    const/4 v14, 0x0

    if-nez v6, :cond_a

    move v15, v14

    goto :goto_4

    :cond_a
    add-int v15, v3, v6

    int-to-float v15, v15

    :goto_4
    sub-int/2addr v8, v9

    sub-int v8, v8, v19

    add-int/2addr v8, v5

    int-to-float v5, v8

    sub-int/2addr v10, v11

    add-int/2addr v10, v6

    if-ne v6, v2, :cond_b

    const/4 v13, 0x0

    :cond_b
    sub-int/2addr v10, v13

    int-to-float v2, v10

    .line 51
    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    cmpl-float v8, v6, v14

    if-eqz v8, :cond_c

    .line 52
    iget v8, v0, Landroid/widget/TextView;->mShadowDx:F

    sub-float/2addr v8, v6

    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr v4, v6

    .line 53
    iget v6, v0, Landroid/widget/TextView;->mShadowDx:F

    iget v8, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v6, v8

    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v5, v6

    .line 54
    iget v6, v0, Landroid/widget/TextView;->mShadowDy:F

    iget v8, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v6, v8

    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr v15, v6

    .line 55
    iget v6, v0, Landroid/widget/TextView;->mShadowDy:F

    iget v8, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v6, v8

    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v2, v6

    .line 56
    :cond_c
    invoke-virtual {v7, v4, v15, v5, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 57
    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-eq v2, v4, :cond_d

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v4

    .line 59
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    move/from16 v20, v4

    move v4, v2

    move/from16 v2, v20

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_5
    int-to-float v1, v1

    add-int/2addr v3, v2

    int-to-float v3, v3

    .line 60
    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 62
    iget v3, v0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v3, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 63
    iget-object v3, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v6, :cond_11

    iget v3, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v3, v5, :cond_11

    .line 64
    iget-boolean v3, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v3, v5, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v3

    if-eqz v3, :cond_f

    and-int/lit8 v1, v1, 0x7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_f

    .line 65
    iget v1, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v3

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    .line 67
    iget-object v5, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v5, v1

    if-eqz v18, :cond_e

    neg-float v5, v5

    .line 68
    :cond_e
    invoke-virtual {v7, v5, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    :cond_f
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 70
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v1

    neg-float v1, v1

    if-eqz v18, :cond_10

    neg-float v1, v1

    .line 71
    :cond_10
    invoke-virtual {v7, v1, v14}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_11
    sub-int v8, v4, v2

    .line 72
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v9

    .line 73
    iget-object v1, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_12

    .line 74
    iget-object v5, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v9

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_6

    .line 75
    :cond_12
    iget-object v1, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v7, v9, v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 76
    :goto_6
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 77
    iget-object v1, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v1

    float-to-int v1, v1

    if-eqz v18, :cond_13

    neg-int v1, v1

    :cond_13
    int-to-float v1, v1

    .line 78
    invoke-virtual {v7, v1, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    iget-object v1, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v7, v9, v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 80
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onEditorAction(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    :goto_0
    if-eqz v2, :cond_9

    .line 2
    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2, v0, v1, v3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x5

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    if-ne v1, v2, :cond_4

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {v2, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    return-void

    :cond_7
    const/4 v2, 0x6

    if-ne v1, v2, :cond_9

    .line 10
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_8
    return-void

    .line 13
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 15
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v16, 0x16

    move-object v2, v13

    move-wide v3, v14

    move-wide v5, v14

    move-object v0, v13

    move/from16 v13, v16

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 16
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v7, 0x1

    const/16 v13, 0x16

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    :cond_a
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 0

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    :cond_1
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Landroid/text/Spannable;

    .line 6
    invoke-static {v0}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 8
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_3

    .line 9
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 10
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_0

    .line 2
    :try_start_0
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :catch_0
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 7
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 8
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    .line 9
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 10
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 12
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x100

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x200

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x1f

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x20000

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 19
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x4000

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 21
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x8000

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 23
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x10000

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 25
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    :cond_8
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p3, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return v2

    :cond_1
    add-int/2addr p2, v3

    .line 4
    invoke-static {p3, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p3

    if-ne v1, v2, :cond_3

    .line 5
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    :goto_0
    add-int/2addr p2, v3

    if-lez p2, :cond_2

    .line 6
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v1, p0, v4, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 7
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 9
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    :goto_1
    add-int/2addr p2, v3

    if-lez p2, :cond_4

    .line 10
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v1, p0, v4, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 11
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v1, p0, v4, p1, p3}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return v2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_1
    return v1

    .line 5
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 8
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    return v1

    .line 10
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x7001

    .line 2
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x32

    if-eq p1, v0, :cond_1

    const/16 v0, 0x34

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x1020020

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x1020022

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    return p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x1020021

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    return p1

    .line 9
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x102001f

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    return p1

    .line 11
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_1
    const/16 v0, 0x17

    if-eq p1, v0, :cond_b

    const/16 v0, 0x42

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_3

    iget-boolean v4, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    if-eqz v4, :cond_3

    .line 7
    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 8
    invoke-interface {v3, p0, v1, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 9
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x82

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 12
    invoke-virtual {v3, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v2

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 16
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 19
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 20
    :cond_8
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_9

    .line 21
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Editable;

    invoke-interface {v0, p0, v1, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    .line 22
    :cond_9
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_a

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_a

    .line 23
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0, p0, v1, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    .line 24
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 25
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_c

    .line 27
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 28
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-eqz v0, :cond_c

    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 32
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Landroid/widget/TextView;->mDeferScroll:I

    if-ltz p1, :cond_0

    const/4 p2, -0x1

    .line 3
    iput p2, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 4
    iget-object p2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    .line 1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 5
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 6
    iget-object v3, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v3, :cond_0

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_0
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v14, 0x1

    if-ne v0, v11, :cond_1

    move v10, v1

    move-object v3, v2

    move-object v4, v3

    const/4 v5, 0x0

    const/4 v12, -0x1

    goto/16 :goto_b

    .line 8
    :cond_1
    iget-object v3, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v3, :cond_2

    iget-object v4, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v4, :cond_2

    .line 9
    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_0
    if-gez v3, :cond_4

    .line 10
    iget-object v4, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v5, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v15, v7, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v4, v5, v6, v15}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 11
    iput-object v4, v7, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    move-object v4, v2

    move v5, v14

    :goto_1
    if-eqz v4, :cond_6

    if-ne v4, v2, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    iget v6, v4, Landroid/text/BoringLayout$Metrics;->width:I

    goto :goto_3

    :cond_6
    :goto_2
    if-gez v3, :cond_7

    .line 13
    iget-object v3, v7, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v6, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    :cond_7
    move v6, v3

    .line 14
    :goto_3
    iget-object v15, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v15, :cond_8

    .line 15
    iget v13, v15, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 16
    iget v13, v15, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 17
    :cond_8
    iget-object v13, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v13, :cond_10

    .line 18
    iget-object v13, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v13, :cond_9

    iget-object v15, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v15, :cond_9

    .line 19
    invoke-static {v13}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v13

    goto :goto_4

    :cond_9
    const/4 v13, -0x1

    :goto_4
    if-gez v13, :cond_a

    .line 20
    iget-object v15, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v12, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, v7, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v10, v7, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v15, v12, v11, v10}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 21
    iput-object v10, v7, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    goto :goto_5

    :cond_a
    move-object v10, v2

    :cond_b
    :goto_5
    if-eqz v10, :cond_d

    if-ne v10, v2, :cond_c

    goto :goto_6

    .line 22
    :cond_c
    iget v2, v10, Landroid/text/BoringLayout$Metrics;->width:I

    goto :goto_7

    :cond_d
    :goto_6
    if-gez v13, :cond_e

    .line 23
    iget-object v2, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v11, v7, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v13, v2

    :cond_e
    move v2, v13

    :goto_7
    if-le v2, v6, :cond_f

    move v6, v2

    :cond_f
    move-object v2, v10

    .line 24
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 25
    iget v10, v7, Landroid/widget/TextView;->mMaxWidthMode:I

    if-ne v10, v14, :cond_11

    .line 26
    iget v10, v7, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v11

    mul-int/2addr v10, v11

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_8

    .line 27
    :cond_11
    iget v10, v7, Landroid/widget/TextView;->mMaxWidth:I

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 28
    :goto_8
    iget v10, v7, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v10, v14, :cond_12

    .line 29
    iget v10, v7, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v11

    mul-int/2addr v10, v11

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_9

    .line 30
    :cond_12
    iget v10, v7, Landroid/widget/TextView;->mMinWidth:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 31
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v10, -0x80000000

    if-ne v0, v10, :cond_13

    .line 32
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    move v12, v3

    move-object v3, v4

    goto :goto_a

    :cond_13
    move v12, v3

    move-object v3, v4

    move v10, v6

    :goto_a
    move-object v4, v2

    .line 33
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int v11, v0, v1

    .line 34
    iget-boolean v0, v7, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_14

    const/high16 v0, 0x100000

    move v2, v0

    goto :goto_c

    :cond_14
    move v2, v11

    .line 35
    :goto_c
    iget-object v0, v7, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_15

    move v0, v2

    goto :goto_d

    :cond_15
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    .line 36
    :goto_d
    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_17

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_16
    :goto_e
    const/high16 v0, 0x40000000    # 2.0f

    goto/16 :goto_14

    .line 38
    :cond_17
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    if-ne v1, v2, :cond_19

    if-ne v0, v2, :cond_19

    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int v1, v10, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    sub-int/2addr v1, v6

    if-eq v0, v1, :cond_18

    goto :goto_f

    :cond_18
    const/4 v0, 0x0

    goto :goto_10

    :cond_19
    :goto_f
    move v0, v14

    .line 39
    :goto_10
    iget-object v1, v7, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v1, :cond_1b

    iget-object v1, v7, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v1, :cond_1b

    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    if-le v2, v1, :cond_1b

    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v1, v1, Landroid/text/BoringLayout;

    if-nez v1, :cond_1a

    if-eqz v5, :cond_1b

    if-ltz v12, :cond_1b

    if-gt v12, v2, :cond_1b

    :cond_1a
    move v1, v14

    goto :goto_11

    :cond_1b
    const/4 v1, 0x0

    .line 40
    :goto_11
    iget v5, v7, Landroid/widget/TextView;->mMaxMode:I

    iget v6, v7, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v5, v6, :cond_1d

    iget v5, v7, Landroid/widget/TextView;->mMaximum:I

    iget v6, v7, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v5, v6, :cond_1c

    goto :goto_12

    :cond_1c
    const/4 v5, 0x0

    goto :goto_13

    :cond_1d
    :goto_12
    move v5, v14

    :goto_13
    if-nez v0, :cond_1e

    if-eqz v5, :cond_16

    :cond_1e
    if-nez v5, :cond_1f

    if-eqz v1, :cond_1f

    .line 41
    iget-object v0, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto :goto_e

    .line 42
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto :goto_e

    :goto_14
    if-ne v8, v0, :cond_20

    const/4 v0, -0x1

    .line 43
    iput v0, v7, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    goto :goto_15

    .line 44
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 45
    iput v0, v7, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    const/high16 v1, -0x80000000

    if-ne v8, v1, :cond_21

    .line 46
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_15

    :cond_21
    move v9, v0

    .line 47
    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    sub-int v0, v9, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 48
    iget v1, v7, Landroid/widget/TextView;->mMaxMode:I

    if-ne v1, v14, :cond_22

    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    iget v2, v7, Landroid/widget/TextView;->mMaximum:I

    if-le v1, v2, :cond_22

    .line 49
    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 50
    :cond_22
    iget-object v1, v7, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v1, :cond_24

    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    if-gt v1, v11, :cond_24

    iget-object v1, v7, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_23

    goto :goto_16

    :cond_23
    const/4 v0, 0x0

    .line 51
    invoke-virtual {v7, v0, v0}, Landroid/view/View;->scrollTo(II)V

    goto :goto_17

    .line 52
    :cond_24
    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 53
    :goto_17
    invoke-virtual {v7, v10, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    .line 7
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    .line 8
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_2
    if-ltz v0, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    .line 11
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v2, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 13
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 14
    :cond_5
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 16
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 17
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    const/4 v0, 0x1

    return v0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResolveDrawables(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/widget/TextView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroid/widget/TextView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p1, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    iget v0, p1, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v0, :cond_5

    iget v0, p1, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v0, :cond_5

    .line 8
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_5

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 10
    iget v1, p1, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v1, v0, :cond_3

    iget v2, p1, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v2, v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 12
    iget-boolean v0, p1, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v0, :cond_5

    .line 13
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 14
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_2

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p1, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    const-string v0, "(restored) "

    goto :goto_1

    :cond_4
    const-string v0, ""

    .line 16
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved cursor position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "text "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_5
    :goto_2
    iget-object p1, p1, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    .line 18
    new-instance v0, Landroid/widget/TextView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 3
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-gez v4, :cond_0

    if-ltz v2, :cond_2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :cond_2
    :goto_0
    if-eqz v1, :cond_6

    .line 6
    new-instance v1, Landroid/widget/TextView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 7
    iput v4, v1, Landroid/widget/TextView$SavedState;->selStart:I

    .line 8
    iput v2, v1, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 9
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_4

    .line 10
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 13
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 14
    :cond_3
    iput-object v0, v1, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 16
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ltz v4, :cond_5

    if-ltz v2, :cond_5

    .line 17
    iput-boolean v3, v1, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 18
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    return-object v1

    :cond_6
    return-object v0
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 2
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/Editor;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 0

    const/16 p1, 0x2000

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    :cond_1
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

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    return v2

    .line 7
    :pswitch_0
    invoke-direct {p0, v3, v0}, Landroid/widget/TextView;->paste(II)V

    return v4

    .line 8
    :pswitch_1
    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    return v4

    .line 10
    :pswitch_2
    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 11
    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    return v4

    .line 13
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    return v4

    :pswitch_data_0
    .packed-switch 0x102001f
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

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 4
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-boolean v5, v2, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v5, :cond_1

    if-ne v0, v4, :cond_1

    .line 5
    iput-boolean v3, v2, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    return v1

    :cond_1
    if-ne v0, v4, :cond_3

    if-eqz v2, :cond_2

    .line 6
    iget-boolean v0, v2, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v3

    .line 7
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v2, Landroid/text/Spannable;

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_a

    .line 8
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_5

    .line 9
    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v5, p0, v2, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v2, v3

    goto :goto_1

    :cond_5
    move v2, v3

    .line 10
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-eqz v0, :cond_6

    .line 11
    iget-boolean v6, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v6, :cond_6

    iget v6, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 12
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    const-class v9, Landroid/text/style/ClickableSpan;

    invoke-interface {v6, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/ClickableSpan;

    .line 13
    array-length v7, v6

    if-lez v7, :cond_6

    .line 14
    aget-object v2, v6, v3

    invoke-virtual {v2, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    move v2, v4

    :cond_6
    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v5, :cond_9

    .line 16
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-nez v5, :cond_8

    .line 18
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    .line 20
    :cond_8
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    move v2, v4

    :cond_9
    if-eqz v2, :cond_a

    return v4

    :cond_a
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_0

    .line 2
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/Editor;->hideControllers()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5

    const/16 v0, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_c

    const v0, 0x8000

    if-eq p1, v0, :cond_a

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_8

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const/4 v0, -0x1

    if-eqz p2, :cond_2

    const-string v3, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 4
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    if-eqz p2, :cond_3

    const-string v4, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 5
    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_1

    :cond_3
    move p2, v0

    .line 6
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    if-ne v4, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-eq v4, p2, :cond_7

    :cond_4
    if-ne v3, p2, :cond_5

    if-ne p2, v0, :cond_5

    .line 7
    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    return v1

    :cond_5
    if-ltz v3, :cond_7

    if-gt v3, p2, :cond_7

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_7

    .line 9
    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1, v3, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {p1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_6
    return v1

    :cond_7
    return v2

    .line 12
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x1020020

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    if-eqz p1, :cond_9

    return v1

    :cond_9
    return v2

    .line 14
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x1020022

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    :cond_b
    return v2

    .line 16
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x1020021

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v2
.end method

.method public performLongClick()Z
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 5
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    :cond_1
    return v0
.end method

.method public prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .locals 6

    .line 1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, " "

    const/16 v1, 0xa

    if-lez p1, :cond_1

    .line 2
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v4, 0x0

    .line 3
    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 4
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 6
    invoke-virtual {p0, v3, p1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 7
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_0
    sub-int/2addr v3, v2

    add-int/2addr p1, v3

    add-int/2addr p2, v3

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    if-eq v2, v1, :cond_1

    invoke-static {v4}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    if-eq v4, v1, :cond_1

    .line 9
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 10
    invoke-virtual {p0, p1, p1, v0}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 11
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 13
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    .line 14
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 15
    invoke-static {p3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 p3, p2, 0x1

    .line 16
    invoke-virtual {p0, p2, p3}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto :goto_2

    .line 17
    :cond_2
    invoke-static {p3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_3

    if-eq p3, v1, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p3

    if-nez p3, :cond_3

    if-eq v2, v1, :cond_3

    .line 18
    invoke-virtual {p0, p2, p2, v0}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 19
    :cond_3
    :goto_2
    invoke-static {p1, p2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p1

    return-wide p1
.end method

.method public removeAdjacentSuggestionSpans(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Editable;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Landroid/text/Editable;

    .line 3
    const-class v1, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 5
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 6
    aget-object v5, v1, v3

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, p1, :cond_1

    if-ne v4, p1, :cond_2

    .line 7
    :cond_1
    invoke-static {v0, p1, p1, v4, v5}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Landroid/text/style/SuggestionSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 2
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 3
    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 4
    aget-object v1, v0, v2

    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/SuggestionSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 6
    :goto_1
    array-length v2, v1

    if-ge v3, v2, :cond_1

    .line 7
    aget-object v2, v1, v3

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    .line 1
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

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    return-void
.end method

.method public selectAllText()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 3
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 4
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p4}, Landroid/widget/Editor;->sendOnTextChanged(II)V

    :cond_1
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 6
    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 7
    :cond_2
    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :goto_0
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez p1, :cond_0

    if-eqz v0, :cond_2

    .line 2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4
    :cond_1
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_7

    if-eqz v0, :cond_11

    .line 2
    iget p2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez p2, :cond_2

    .line 3
    iput-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    goto/16 :goto_5

    .line 4
    :cond_2
    iget-object p2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    :cond_3
    iput-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object p2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    :cond_4
    iput-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object p2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    :cond_5
    iput-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object p2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    :cond_6
    iput-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 12
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 13
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 14
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 15
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_5

    :cond_7
    if-nez v0, :cond_8

    .line 16
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 17
    :cond_8
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v1, v2, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 18
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_9

    if-eqz v2, :cond_9

    .line 19
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 20
    :cond_9
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 21
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v2, p2, :cond_a

    if-eqz v2, :cond_a

    .line 22
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 23
    :cond_a
    iput-object p2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 24
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v2, p3, :cond_b

    if-eqz v2, :cond_b

    .line 25
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 26
    :cond_b
    iput-object p3, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v2, p4, :cond_c

    if-eqz v2, :cond_c

    .line 28
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 29
    :cond_c
    iput-object p4, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 30
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_d

    .line 32
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 33
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 34
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 36
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_2

    .line 37
    :cond_d
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :goto_2
    if-eqz p3, :cond_e

    .line 38
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 39
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 40
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 41
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 42
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_3

    .line 43
    :cond_e
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_3
    if-eqz p2, :cond_f

    .line 44
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 45
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 46
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 47
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 48
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    goto :goto_4

    .line 49
    :cond_f
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    :goto_4
    if-eqz p4, :cond_10

    .line 50
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 51
    invoke-virtual {p4, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 52
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 53
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 54
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto :goto_5

    .line 55
    :cond_10
    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    :cond_11
    :goto_5
    if-eqz v0, :cond_12

    .line 56
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object p3, v0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    .line 58
    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    const/4 v4, 0x0

    if-nez v3, :cond_7

    if-eqz v0, :cond_11

    .line 2
    iget p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez p1, :cond_2

    .line 3
    iput-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    goto/16 :goto_5

    .line 4
    :cond_2
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    :cond_3
    iput-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    :cond_4
    iput-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    :cond_5
    iput-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    :cond_6
    iput-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 12
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 13
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 14
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 15
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_5

    :cond_7
    if-nez v0, :cond_8

    .line 16
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 17
    :cond_8
    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v1, v3, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 18
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_9

    if-eqz v1, :cond_9

    .line 19
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 20
    :cond_9
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 21
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_a

    if-eqz v1, :cond_a

    .line 22
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 23
    :cond_a
    iput-object p2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 24
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v1, p3, :cond_b

    if-eqz v1, :cond_b

    .line 25
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 26
    :cond_b
    iput-object p3, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v1, p4, :cond_c

    if-eqz v1, :cond_c

    .line 28
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 29
    :cond_c
    iput-object p4, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 30
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_d

    .line 32
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 33
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 34
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 36
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    goto :goto_2

    .line 37
    :cond_d
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    :goto_2
    if-eqz p3, :cond_e

    .line 38
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 39
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 40
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 41
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 42
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    goto :goto_3

    .line 43
    :cond_e
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    :goto_3
    if-eqz p2, :cond_f

    .line 44
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 45
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 46
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 47
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 48
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    goto :goto_4

    .line 49
    :cond_f
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    :goto_4
    if-eqz p4, :cond_10

    .line 50
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 51
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 52
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 53
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 54
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto :goto_5

    .line 55
    :cond_10
    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 56
    :cond_11
    :goto_5
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    .line 6
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
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

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    .line 6
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCursorPosition_internal(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v1, p1, :cond_1

    .line 4
    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->makeBlink()V

    .line 7
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 2
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 8
    :cond_2
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 10
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 11
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->makeBlink()V

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

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10803b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

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
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    .line 4
    :cond_0
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8
    iget v3, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-le v3, v1, :cond_2

    move v3, v1

    .line 9
    :cond_2
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    if-le v4, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    .line 10
    :goto_0
    invoke-static {v0, v3, v1}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 11
    iget-object v4, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v0, v3, v1, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 12
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 14
    iget v3, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-gez v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    if-le v3, v1, :cond_6

    move v3, v1

    .line 15
    :cond_6
    :goto_2
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-gez v4, :cond_7

    goto :goto_3

    :cond_7
    if-le v4, v1, :cond_8

    move v2, v1

    goto :goto_3

    :cond_8
    move v2, v4

    .line 16
    :goto_3
    invoke-static {v0, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 17
    iget p1, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_9

    .line 18
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_4

    .line 19
    :cond_9
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    :goto_4
    return-void
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_0

    .line 2
    iput-object p1, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

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

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result p1

    .line 2
    iget-object p2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/Editor;->setFrame()V

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    return p1
.end method

.method public setFreezesText(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 11

    const v0, 0x800007

    and-int v1, p1, v0

    if-nez v1, :cond_0

    const v1, 0x800003

    or-int/2addr p1, v1

    :cond_0
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    and-int v1, p1, v0

    .line 1
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-eq p1, v2, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 4
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v5

    .line 6
    iget-object p1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v3

    :goto_1
    move v6, v3

    .line 7
    sget-object v8, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget p1, p0, Landroid/view/View;->mRight:I

    iget v0, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int v9, p1, v0

    const/4 v10, 0x1

    move-object v4, p0

    move-object v7, v8

    invoke-virtual/range {v4 .. v10}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_5
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

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

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 4
    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

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

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7
    invoke-direct {p0, v6, v5, v2}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_2

    .line 8
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v2

    .line 9
    :goto_0
    invoke-direct {p0, v6, v5, v2}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    move v2, v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, v6, v0, v0}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 11
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_4

    move v2, v7

    .line 12
    :cond_4
    :goto_1
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result p1

    xor-int/2addr p1, v7

    .line 13
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v0, p1, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    xor-int/lit8 v0, v3, 0x1

    .line 14
    invoke-direct {p0, p1, v0, v7}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

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

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 2
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4
    :try_start_0
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, p1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    iput v0, p1, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v0, 0x1

    iput v0, p1, Landroid/widget/Editor;->mInputType:I

    .line 6
    :goto_0
    iget-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/Editor;->mInputType:I

    .line 8
    :cond_1
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 3
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 4
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

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

    .line 1
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return-void
.end method

.method public setMaxEms(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinEms(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMinMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1

    .line 2
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, p1, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 6
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    return-void
.end method

.method public setRawInputType(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0

    .line 1
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
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, p1, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eq p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 3
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 4
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 5
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

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

    .line 1
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
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

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
    invoke-static {p1, p2}, Landroid/widget/TextView$CharWrapper;->access$002(Landroid/widget/TextView$CharWrapper;[C)[C

    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 67
    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 68
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 70
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v1, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 71
    invoke-direct {p0, v0, v1, v1, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    move v0, v1

    .line 72
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v2, :cond_1

    .line 73
    new-instance v2, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v2, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v2, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    .line 75
    :goto_1
    iget-object p1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object p2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    return-void

    .line 76
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

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 5

    .line 1
    sget-object v0, Li/a;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_0
    const/4 p2, 0x3

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    :cond_1
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eqz p2, :cond_2

    int-to-float p2, p2

    .line 7
    invoke-direct {p0, p2}, Landroid/widget/TextView;->setRawTextSize(F)V

    :cond_2
    const/4 p2, 0x5

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    const/4 p2, 0x6

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    const/16 p2, 0xc

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x2

    .line 14
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 15
    invoke-direct {p0, p2, v1, v2}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    const/4 p2, 0x7

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_5

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/16 v3, 0x9

    .line 18
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    const/16 v4, 0xa

    .line 19
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 20
    invoke-virtual {p0, v2, v1, v3, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_5
    const/16 p2, 0xb

    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 22
    new-instance p2, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

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

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 5
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-ne v1, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 10
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    sget-object p1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_1

    :cond_3
    sget-object p1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    :goto_1
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 11
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

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

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 3
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 4
    iget-object p1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setRawTextSize(F)V

    return-void
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 5
    instance-of v0, p1, Landroid/text/method/TransformationMethod2;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    check-cast p1, Landroid/text/method/TransformationMethod2;

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 8
    invoke-interface {p1, v0}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    goto :goto_1

    .line 9
    :cond_3
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 10
    :goto_1
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    :cond_4
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
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 3
    invoke-virtual {p1, p2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 4
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    new-instance p2, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {p2, p1}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object p2, p1, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    .line 5
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of p2, p1, Landroid/text/Editable;

    if-nez p2, :cond_0

    .line 6
    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 7
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast p1, Landroid/text/Editable;

    iget-object p2, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 9
    iput-object p2, p1, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 10
    iput-object p2, p1, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 11
    iput-object p2, p1, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    :cond_2
    :goto_0
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2
    :goto_0
    sget-object v1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p2, v1, :cond_3

    if-gez p3, :cond_1

    if-ltz p4, :cond_2

    .line 3
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {p0, v1, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 4
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 5
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    :cond_2
    move v4, p4

    move v1, v3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move v4, v2

    .line 7
    :goto_1
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_6

    if-gez p3, :cond_4

    if-ltz p4, :cond_5

    .line 8
    :cond_4
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 9
    invoke-direct {p0, v1, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    :cond_5
    move v2, p4

    move v1, v3

    :cond_6
    if-eqz v1, :cond_a

    .line 10
    iput-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 11
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v3, v1, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 12
    :cond_7
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_a

    if-gez v2, :cond_8

    .line 13
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    :cond_8
    if-gez v4, :cond_9

    .line 14
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 15
    :cond_9
    invoke-virtual {p0, v2, v4}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 16
    :cond_a
    instance-of v1, p2, Landroid/text/style/UpdateAppearance;

    if-nez v1, :cond_b

    instance-of v1, p2, Landroid/text/style/ParagraphStyle;

    if-nez v1, :cond_b

    instance-of v1, p2, Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_f

    :cond_b
    if-eqz v0, :cond_d

    .line 17
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_c

    goto :goto_2

    .line 18
    :cond_c
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_3

    .line 19
    :cond_d
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    iput-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 21
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 22
    :goto_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_f

    if-ltz p3, :cond_e

    .line 23
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v2, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_e
    if-ltz p4, :cond_f

    .line 24
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v2, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 25
    :cond_f
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 26
    iput-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v0, :cond_10

    .line 27
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 28
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 29
    :cond_10
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    if-ltz p1, :cond_13

    if-eqz v0, :cond_12

    .line 30
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez p1, :cond_11

    goto :goto_4

    .line 31
    :cond_11
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_5

    .line 32
    :cond_12
    :goto_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 33
    :cond_13
    :goto_5
    instance-of p1, p2, Landroid/text/ParcelableSpan;

    if-eqz p1, :cond_18

    if-eqz v0, :cond_18

    .line 34
    iget-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz p1, :cond_18

    .line 35
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz p1, :cond_17

    if-ltz p3, :cond_15

    .line 36
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le p1, p3, :cond_14

    .line 37
    iput p3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 38
    :cond_14
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le p1, p5, :cond_15

    .line 39
    iput p5, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_15
    if-ltz p4, :cond_18

    .line 40
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le p1, p4, :cond_16

    .line 41
    iput p4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 42
    :cond_16
    iget p1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le p1, p6, :cond_18

    .line 43
    iput p6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    goto :goto_6

    .line 44
    :cond_17
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 45
    :cond_18
    :goto_6
    iget-object p1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz p1, :cond_19

    iget-object p1, p1, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz p1, :cond_19

    if-gez p4, :cond_19

    instance-of p3, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz p3, :cond_19

    .line 46
    check-cast p2, Landroid/text/style/SpellCheckSpan;

    invoke-virtual {p1, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    :cond_19
    return-void
.end method

.method public stopSelectionActionMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    return-void
.end method

.method public textCanBeSelected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public updateAfterEdit()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_0

    .line 3
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    if-ltz v0, :cond_3

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 7
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_3
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    .line 3
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :cond_2
    return v0
.end method

.method public viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public viewportToContentHorizontalOffset()I
    .locals 2

    .line 1
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

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v0, v1

    .line 2
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
