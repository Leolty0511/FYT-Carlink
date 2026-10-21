.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$TextModifyOperation;,
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionEndHandleView;,
        Landroid/widget/Editor$SelectionStartHandleView;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$ActionPopupWindow;,
        Landroid/widget/Editor$SelectionActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;
    }
.end annotation


# static fields
.field public static final BLINK:I = 0x1f4

.field public static final DEBUG_UNDO:Z = false

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x14

.field public static final EXTRACT_NOTHING:I = -0x2

.field public static final EXTRACT_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TEMP_POSITION:[F


# instance fields
.field public mBlink:Landroid/widget/Editor$Blink;

.field public mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field public mCreatedWithASelection:Z

.field public mCursorCount:I

.field public final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field public mCursorVisible:Z

.field public mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field public mDiscardNextActionUp:Z

.field public mError:Ljava/lang/CharSequence;

.field public mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field public mErrorWasChanged:Z

.field public mFrozenWithFocus:Z

.field public mIgnoreActionUpEvent:Z

.field public mInBatchEditControllers:Z

.field public mInputContentType:Landroid/widget/Editor$InputContentType;

.field public mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field public mInputType:I

.field public mInsertionControllerEnabled:Z

.field public mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field public mKeyListener:Landroid/text/method/KeyListener;

.field public mLastDownPositionX:F

.field public mLastDownPositionY:F

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field public mPreserveDetachedSelection:Z

.field public mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field public mSelectionActionMode:Landroid/view/ActionMode;

.field public mSelectionControllerEnabled:Z

.field public mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field public mSelectionMoved:Z

.field public mShowCursor:J

.field public mShowErrorAfterAttach:Z

.field public mShowSoftInputOnFocus:Z

.field public mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field public mSpellChecker:Landroid/widget/SpellChecker;

.field public mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field public mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTempRect:Landroid/graphics/Rect;

.field public mTemporaryDetach:Z

.field public mTextDisplayLists:[Landroid/view/DisplayList;

.field public mTextIsSelectable:Z

.field private mTextView:Landroid/widget/TextView;

.field public mTouchFocusSelected:Z

.field public mUndoInputFilter:Landroid/text/InputFilter;

.field public mUndoManager:Landroid/content/UndoManager;

.field public mUndoOwner:Landroid/content/UndoOwner;

.field public mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    sput-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 4
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 5
    iput-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic access$1200(Landroid/widget/Editor;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Landroid/widget/Editor;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2200(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$2202(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public static synthetic access$2300(Landroid/widget/Editor;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method public static synthetic access$2400(Landroid/widget/Editor;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2600(Landroid/widget/Editor;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2700(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$2702(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic access$2800(Landroid/widget/Editor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    return-void
.end method

.method public static synthetic access$2900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$2902(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic access$3000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$3002(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic access$3100(Landroid/widget/Editor;FF)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Landroid/widget/Editor;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/widget/Editor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method private canSelectText()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 4
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v2

    move-object v5, p2

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 5
    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    if-ge p3, v3, :cond_0

    .line 6
    invoke-virtual {v2, p3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    float-to-double p2, p2

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/text/Spannable;

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/SuggestionSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 5
    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 6
    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    and-int/lit8 v1, v1, -0x2

    .line 7
    aget-object v2, v0, v3

    invoke-virtual {v2, v1}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    int-to-float v3, p2

    .line 1
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2
    :cond_1
    :goto_1
    iget v3, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ge v0, v3, :cond_2

    .line 3
    iget-object v3, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    neg-int p2, p2

    int-to-float p2, p2

    .line 4
    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    .line 1
    invoke-virtual {v9, v0}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v2

    .line 2
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v10

    .line 3
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v11

    if-gez v11, :cond_0

    return-void

    :cond_0
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v7, v10

    move v8, v11

    .line 4
    invoke-virtual/range {v2 .. v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 5
    instance-of v2, v9, Landroid/text/DynamicLayout;

    if-eqz v2, :cond_c

    .line 6
    iget-object v2, v1, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 7
    invoke-static {v3}, Lu/a;->j(I)I

    move-result v2

    new-array v2, v2, [Landroid/view/DisplayList;

    iput-object v2, v1, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    .line 8
    :cond_1
    move-object v2, v9

    check-cast v2, Landroid/text/DynamicLayout;

    .line 9
    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v4

    .line 10
    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v5

    .line 11
    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v6

    .line 12
    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v7

    const/4 v8, -0x1

    move v10, v3

    move v11, v10

    move v12, v8

    :goto_0
    if-ge v10, v6, :cond_b

    .line 13
    aget v13, v4, v10

    .line 14
    aget v14, v5, v10

    if-ne v14, v8, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v3

    :goto_1
    if-eqz v16, :cond_3

    .line 15
    invoke-direct {v1, v5, v6, v11}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v14

    .line 16
    aput v14, v5, v10

    add-int/lit8 v11, v14, 0x1

    .line 17
    :cond_3
    iget-object v8, v1, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v17, v8, v14

    if-nez v17, :cond_4

    .line 18
    iget-object v3, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getHardwareRenderer()Landroid/view/HardwareRenderer;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "Text "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/HardwareRenderer;->createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;

    move-result-object v17

    aput-object v17, v8, v14

    goto :goto_2

    :cond_4
    move-object/from16 v18, v4

    if-eqz v16, :cond_5

    .line 19
    invoke-virtual/range {v17 .. v17}, Landroid/view/DisplayList;->clear()V

    :cond_5
    :goto_2
    move-object/from16 v3, v17

    .line 20
    invoke-virtual {v3}, Landroid/view/DisplayList;->isValid()Z

    move-result v4

    const/4 v8, 0x1

    xor-int/2addr v4, v8

    if-ge v10, v7, :cond_7

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 p5, v5

    move/from16 v16, v7

    const/4 v4, 0x0

    goto :goto_7

    :cond_7
    :goto_3
    add-int/2addr v12, v8

    .line 21
    invoke-virtual {v9, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    .line 22
    invoke-virtual {v9, v13}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v14

    .line 23
    iget-object v15, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    move-object/from16 p5, v5

    .line 24
    iget-object v5, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v15, 0x1

    move v1, v12

    :goto_4
    if-gt v1, v13, :cond_8

    move/from16 v16, v7

    .line 25
    invoke-virtual {v9, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 26
    invoke-virtual {v9, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v15

    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v16

    goto :goto_4

    :cond_8
    move/from16 v16, v7

    float-to-int v1, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v15, v5

    float-to-int v15, v15

    goto :goto_5

    :cond_9
    move/from16 v16, v7

    const/4 v1, 0x0

    :goto_5
    if-eqz v4, :cond_a

    sub-int v4, v15, v1

    sub-int v5, v14, v8

    .line 27
    invoke-virtual {v3, v4, v5}, Landroid/view/DisplayList;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v4

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v7, v8

    int-to-float v7, v7

    .line 28
    :try_start_0
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    invoke-virtual {v9, v4, v12, v13}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v3}, Landroid/view/DisplayList;->end()V

    const/4 v4, 0x0

    .line 31
    invoke-virtual {v3, v4}, Landroid/view/DisplayList;->setClipToBounds(Z)V

    goto :goto_6

    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    .line 32
    invoke-virtual {v3}, Landroid/view/DisplayList;->end()V

    .line 33
    invoke-virtual {v3, v4}, Landroid/view/DisplayList;->setClipToBounds(Z)V

    throw v0

    :cond_a
    const/4 v4, 0x0

    .line 34
    :goto_6
    invoke-virtual {v3, v1, v8, v15, v14}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 35
    :goto_7
    move-object v1, v0

    check-cast v1, Landroid/view/HardwareCanvas;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p5

    move v3, v4

    move v12, v13

    move/from16 v7, v16

    move-object/from16 v4, v18

    const/4 v8, -0x1

    goto/16 :goto_0

    .line 36
    :cond_b
    invoke-virtual {v2, v6}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    goto :goto_8

    .line 37
    :cond_c
    invoke-virtual {v9, v0, v10, v11}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    :goto_8
    return-void
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_9

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gez p2, :cond_0

    const/4 p2, -0x1

    .line 3
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    move p2, v1

    goto :goto_2

    :cond_0
    add-int/2addr p3, p4

    .line 4
    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    .line 5
    move-object v4, v0

    check-cast v4, Landroid/text/Spanned;

    .line 6
    const-class v5, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 7
    array-length v6, v5

    :cond_1
    :goto_0
    if-lez v6, :cond_3

    add-int/lit8 v6, v6, -0x1

    .line 8
    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ge v7, p2, :cond_2

    move p2, v7

    .line 9
    :cond_2
    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-le v7, p3, :cond_1

    move p3, v7

    goto :goto_0

    .line 10
    :cond_3
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    sub-int p4, p3, p4

    .line 11
    iput p4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    if-le p2, v2, :cond_4

    move p2, v2

    goto :goto_1

    :cond_4
    if-gez p2, :cond_5

    move p2, v1

    :cond_5
    :goto_1
    if-le p3, v2, :cond_6

    goto :goto_2

    :cond_6
    if-gez p3, :cond_7

    move v2, v1

    goto :goto_2

    :cond_7
    move v2, p3

    .line 12
    :goto_2
    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_8

    .line 13
    invoke-interface {v0, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_3

    .line 14
    :cond_8
    invoke-static {v0, p2, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_3

    .line 15
    :cond_9
    iput v1, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 16
    iput v1, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    const-string p1, ""

    .line 17
    iput-object p1, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 18
    :goto_3
    iput v1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    const/16 p1, 0x800

    .line 19
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p1

    if-eqz p1, :cond_a

    .line 20
    iget p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 21
    :cond_a
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSingleLine()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 22
    iget p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/2addr p1, v3

    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 23
    :cond_b
    iput v1, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 24
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 25
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    return v3

    :cond_c
    return v1
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/inputmethodservice/ExtractEditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    array-length v0, v0

    :goto_0
    const/4 v1, 0x0

    if-ge p3, v0, :cond_3

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_1

    .line 2
    aget v3, p1, v2

    if-ne v3, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return p3

    :cond_3
    add-int/lit8 p1, v0, 0x1

    .line 3
    invoke-static {p1}, Lu/a;->h(I)I

    move-result p1

    .line 4
    new-array p1, p1, [Landroid/view/DisplayList;

    .line 5
    iget-object p2, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object p1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    return v0
.end method

.method private getCharRange(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 3
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    .line 5
    invoke-static {p1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    :cond_0
    if-ge p1, v0, :cond_1

    .line 6
    invoke-static {p1, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    :cond_1
    add-int/lit8 v0, p1, -0x2

    if-ltz v0, :cond_2

    .line 7
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 8
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 9
    invoke-static {v2, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-static {v0, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    :cond_2
    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_3

    .line 11
    invoke-static {v0, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    .line 12
    :cond_3
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private getErrorX()I
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    if-eqz v2, :cond_0

    .line 4
    iget v5, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_0
    neg-int v1, v5

    div-int/lit8 v1, v1, 0x2

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v1, v0

    .line 5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    iget v5, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_2
    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    sub-int/2addr v5, v0

    .line 7
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v5

    :goto_0
    return v0
.end method

.method private getErrorY()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 3
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v3, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    if-eqz v3, :cond_1

    .line 5
    iget v4, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 6
    iget v4, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    :cond_1
    :goto_0
    sub-int/2addr v1, v4

    .line 7
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    add-int/2addr v0, v4

    .line 9
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getLastTapPosition()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getLastTouchOffsets()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 4
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;IZ)F
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2, p3, p4}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result p1

    return p1
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10900a9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sget v2, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 3
    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 p1, 0x11

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10
    invoke-virtual {v0, p1, p1}, Landroid/view/View;->measure(II)V

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v3, v3, p1, v1}, Landroid/view/View;->layout(IIII)V

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 13
    new-instance p1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p1, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to inflate text drag thumbnail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    return-void
.end method

.method private hideError()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isCursorInsideSuggestionSpan()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/text/Spannable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 4
    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isOffsetVisible(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    .line 4
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    float-to-int p1, p1

    .line 5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result p1

    return p1
.end method

.method private isPositionOnText(FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result p2

    .line 3
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 4
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineRight(I)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isPositionVisible(II)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    monitor-enter v0

    int-to-float p1, p1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    .line 3
    aput p1, v0, p2

    .line 4
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    :goto_0
    if-eqz p1, :cond_5

    .line 5
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eq p1, v2, :cond_0

    .line 6
    aget v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 7
    aget v2, v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aput v2, v0, p2

    .line 8
    :cond_0
    aget v2, v0, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_4

    aget v2, v0, p2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_4

    aget v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_4

    aget v2, v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 11
    :cond_2
    aget v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 12
    aget v2, v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v0, p2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 14
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_3

    .line 15
    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    .line 16
    :cond_4
    :goto_1
    monitor-exit v0

    return v1

    .line 17
    :cond_5
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private resumeBlink()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    :cond_0
    return-void
.end method

.method private selectCurrentWord()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v2, v0, 0xf

    and-int/lit16 v0, v0, 0xff0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    const/16 v2, 0x10

    if-eq v0, v2, :cond_9

    const/16 v2, 0x20

    if-eq v0, v2, :cond_9

    const/16 v2, 0xd0

    if-eq v0, v2, :cond_9

    const/16 v2, 0xb0

    if-ne v0, v2, :cond_2

    goto/16 :goto_3

    .line 5
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 6
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 7
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v2

    if-ltz v0, :cond_8

    .line 8
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v0, v3, :cond_3

    goto/16 :goto_2

    :cond_3
    if-ltz v2, :cond_8

    .line 9
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v2, v3, :cond_4

    goto/16 :goto_2

    .line 10
    :cond_4
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {v3, v0, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 11
    array-length v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_5

    .line 12
    aget-object v0, v3, v1

    .line 13
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 14
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v3

    .line 16
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 17
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v4

    .line 18
    invoke-virtual {v3, v2}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v4, v3, :cond_7

    if-eq v2, v3, :cond_7

    if-ne v4, v2, :cond_6

    goto :goto_0

    :cond_6
    move v0, v2

    move v2, v4

    goto :goto_1

    .line 19
    :cond_7
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/Editor;->getCharRange(I)J

    move-result-wide v2

    .line 20
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 21
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v2

    move v6, v2

    move v2, v0

    move v0, v6

    .line 22
    :goto_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-le v0, v2, :cond_8

    move v1, v5

    :cond_8
    :goto_2
    return v1

    .line 23
    :cond_9
    :goto_3
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0
.end method

.method private sendUpdateSelection()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 7
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 8
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    move v6, v0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v2

    move v6, v5

    .line 9
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/widget/TextView$Drawables;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 4
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 5
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private shouldBlink()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-gez v2, :cond_2

    return v1

    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private showError()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x10900b1

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 7
    new-instance v3, Landroid/widget/Editor$ErrorPopup;

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-direct {v3, v0, v4, v2}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 12
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 14
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    return-void
.end method

.method private suspendBlink()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    if-le v0, v1, :cond_1

    .line 3
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v5, v1

    move v1, v0

    move v0, v5

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v4

    .line 6
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v3

    if-lt v4, v0, :cond_2

    if-ge v3, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private updateCursorPosition(IIIF)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v2, v2, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5
    iget-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p4, v1

    .line 6
    invoke-static {v1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    float-to-int p4, p4

    .line 7
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, v2

    .line 8
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v2, p1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v2

    add-int/2addr v0, p4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, v1

    invoke-virtual {p1, p4, p2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 3
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 5
    new-instance p3, Landroid/widget/SpellChecker;

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p3, v0}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object p3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 6
    :cond_0
    iget-object p3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p3, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Landroid/widget/Editor$SpanController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 6
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public adjustInputType(ZZZZ)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    and-int/lit16 p1, v0, -0xff1

    or-int/lit16 p1, p1, 0x80

    .line 2
    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    :cond_1
    if-eqz p3, :cond_3

    .line 3
    iget p1, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 p1, p1, -0xff1

    or-int/lit16 p1, p1, 0xe0

    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    :cond_2
    and-int/lit8 p1, v0, 0xf

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    if-eqz p4, :cond_3

    and-int/lit16 p1, v0, -0xff1

    or-int/lit8 p1, p1, 0x10

    .line 4
    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    :cond_3
    :goto_0
    return-void
.end method

.method public areSuggestionsShown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public beginBatchEdit()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 2
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_1

    .line 3
    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 5
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 6
    iget-boolean v2, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_0

    .line 7
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 9
    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 10
    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 11
    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 12
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    :cond_1
    return-void
.end method

.method public createInputContentTypeIfNeeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    :cond_0
    return-void
.end method

.method public createInputMethodStateIfNeeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 2
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    .line 3
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    :cond_0
    return-void
.end method

.method public ensureEndedBatchEdit()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result p1

    return p1
.end method

.method public finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 2
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p1, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 7
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method public getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    return-object v0
.end method

.method public getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    return-object v0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method public hasInsertionController()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method public hasSelectionController()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideControllers()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 2
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    return-void
.end method

.method public invalidateTextDisplayList()V
    .locals 3

    .line 12
    iget-object v0, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 14
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/DisplayList;->clear()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-eqz v0, :cond_4

    instance-of v0, p1, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p2

    .line 3
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p3

    .line 4
    check-cast p1, Landroid/text/DynamicLayout;

    .line 5
    invoke-virtual {p1}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 8
    aget v3, v0, v2

    if-lt v3, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, p1, :cond_4

    .line 9
    aget p2, v1, v2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    .line 10
    iget-object v3, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object p2, v3, p2

    invoke-virtual {p2}, Landroid/view/DisplayList;->clear()V

    .line 11
    :cond_2
    aget p2, v0, v2

    if-lt p2, p3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public isCursorVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeBlink()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 3
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-wide v1, p0, Landroid/widget/Editor;->mShowCursor:J

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    invoke-virtual {v0, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 3
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 4
    :cond_0
    iput-boolean v1, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 6
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 10
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 11
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 12
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 13
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_3
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->access$300(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    .line 4
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 9
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 10
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 12
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    :cond_5
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 16
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 18
    iput-boolean v0, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    move/from16 v5, p5

    .line 1
    iget-object v2, v6, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2
    iget-object v3, v6, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 3
    iget-object v4, v6, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v4, :cond_2

    .line 4
    iget v7, v4, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v7, :cond_2

    .line 5
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 6
    iget-object v7, v6, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7
    iget-boolean v7, v4, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v7, :cond_0

    iget-boolean v7, v4, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v7, :cond_1

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 9
    :cond_1
    iget-object v7, v6, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    .line 10
    iget-object v7, v4, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 11
    iget-object v7, v4, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v10, 0x0

    aput v10, v7, v9

    const/4 v11, 0x0

    aput v10, v7, v11

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    iget-object v12, v4, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    invoke-virtual {v7, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 13
    iget-object v7, v4, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v12, v4, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    aget v11, v12, v11

    aget v9, v12, v9

    invoke-virtual {v7, v11, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 14
    iget-object v7, v4, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    int-to-float v9, v5

    invoke-virtual {v7, v10, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 15
    iget-object v7, v4, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget-object v9, v4, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v10, v10

    iget v11, v9, Landroid/graphics/RectF;->top:F

    float-to-double v14, v11

    add-double/2addr v14, v12

    double-to-int v11, v14

    iget v14, v9, Landroid/graphics/RectF;->right:F

    float-to-double v14, v14

    add-double/2addr v14, v12

    double-to-int v14, v14

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    move v15, v2

    move/from16 v16, v3

    float-to-double v2, v9

    add-double/2addr v2, v12

    double-to-int v2, v2

    invoke-virtual {v7, v10, v11, v14, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    iget-object v9, v6, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v4, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_2
    move v15, v2

    move/from16 v16, v3

    .line 17
    :goto_0
    iget-object v2, v6, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {v2, v1, v5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    :cond_3
    if-eqz v0, :cond_4

    move v2, v15

    move/from16 v3, v16

    if-ne v2, v3, :cond_4

    .line 19
    iget v2, v6, Landroid/widget/Editor;->mCursorCount:I

    if-lez v2, :cond_4

    .line 20
    invoke-direct {v6, v1, v5}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    const/4 v0, 0x0

    :cond_4
    move-object v3, v0

    .line 21
    iget-object v0, v6, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    .line 22
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v2, p4

    .line 23
    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_1
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 4
    invoke-virtual {v1, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 5
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    .line 8
    instance-of v4, p1, Landroid/widget/Editor$DragLocalState;

    if-eqz v4, :cond_1

    .line 9
    move-object v2, p1

    check-cast v2, Landroid/widget/Editor$DragLocalState;

    :cond_1
    const/4 p1, 0x1

    if-eqz v2, :cond_2

    .line 10
    iget-object v4, v2, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-ne v4, v5, :cond_2

    move v4, p1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-eqz v4, :cond_3

    .line 11
    iget v5, v2, Landroid/widget/Editor$DragLocalState;->start:I

    if-lt v1, v5, :cond_3

    iget v5, v2, Landroid/widget/Editor$DragLocalState;->end:I

    if-ge v1, v5, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 13
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v1, v0}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v6

    .line 14
    invoke-static {v6, v7}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v1

    .line 15
    invoke-static {v6, v7}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 16
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 17
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v6, v0}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    if-eqz v4, :cond_5

    .line 18
    iget v0, v2, Landroid/widget/Editor$DragLocalState;->start:I

    .line 19
    iget v1, v2, Landroid/widget/Editor$DragLocalState;->end:I

    if-gt v6, v0, :cond_4

    .line 20
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    .line 21
    :cond_4
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    add-int/lit8 v1, v0, -0x1

    .line 22
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 23
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    if-le v0, v2, :cond_5

    .line 24
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 25
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 26
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    :cond_5
    return-void
.end method

.method public onFocusChanged(ZI)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 2
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 3
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    .line 4
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 5
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 6
    :goto_0
    iget-boolean v4, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 7
    iget-boolean v3, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v3, :cond_2

    if-ltz p1, :cond_2

    if-gez v2, :cond_8

    .line 8
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v3

    if-ltz v3, :cond_3

    .line 9
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10
    :cond_3
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 11
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v3, v4, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 12
    :cond_4
    iget-object p2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v3, p2, Landroid/inputmethodservice/ExtractEditText;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v3, :cond_6

    :cond_5
    if-ltz p1, :cond_6

    if-ltz v2, :cond_6

    .line 13
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Landroid/text/Spannable;

    invoke-static {p2, p1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 14
    :cond_6
    iget-boolean p1, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->selectAllText()Z

    .line 16
    :cond_7
    iput-boolean v0, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 17
    :cond_8
    iput-boolean v1, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 18
    iput-boolean v1, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 19
    iget-object p1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    .line 20
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 21
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    goto :goto_3

    .line 22
    :cond_a
    iget-object p1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz p1, :cond_b

    .line 23
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 24
    :cond_b
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 25
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of p2, p1, Landroid/inputmethodservice/ExtractEditText;

    if-eqz p2, :cond_c

    .line 26
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    .line 27
    iget-object p2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p2

    .line 28
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 29
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_2

    .line 30
    :cond_c
    iget-boolean p1, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz p1, :cond_d

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 31
    :cond_d
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 32
    iget-boolean p1, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz p1, :cond_e

    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 33
    :cond_e
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    .line 34
    :goto_2
    iget-object p1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz p1, :cond_f

    .line 35
    invoke-virtual {p1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    :cond_f
    :goto_3
    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    :goto_0
    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 10
    iput-boolean p1, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    :cond_2
    return-void
.end method

.method public onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 3
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v0, :cond_3

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p1

    .line 6
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7
    iget-object p1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 9
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    new-instance p1, Landroid/widget/Editor$1;

    invoke-direct {p1, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object p1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 12
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/widget/Editor$Blink;->cancel()V

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 9
    iget-object p1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    :cond_4
    :goto_0
    return-void
.end method

.method public performLongClick(Z)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    iget v1, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 4
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Editor$InsertionPointCursorController;->showWithActionPopup()V

    move p1, v0

    :cond_0
    if-nez p1, :cond_2

    .line 6
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 7
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    .line 9
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 10
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 12
    new-instance v4, Landroid/widget/Editor$DragLocalState;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v4, v5, p1, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 13
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/widget/Editor;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v1, v4, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 14
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 16
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    .line 17
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    if-nez v0, :cond_3

    .line 18
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v0

    :cond_3
    return v0
.end method

.method public prepareCursorControllers()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 4
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7cf

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 8
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 9
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 10
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 12
    iput-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 13
    :cond_5
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_6

    .line 14
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 15
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 17
    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    :cond_6
    return-void
.end method

.method public reportExtractedText()Z
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v2, :cond_0

    .line 3
    iget-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v3, :cond_2

    .line 4
    :cond_0
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 5
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 6
    iget-object v3, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v3, :cond_2

    .line 7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 8
    iget v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v4, :cond_1

    if-nez v2, :cond_1

    const/4 v2, -0x2

    .line 9
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 10
    :cond_1
    iget v6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v7, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v8, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v9, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v3, v3, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v4, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v10, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    const/4 v2, -0x1

    .line 12
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 13
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 14
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 15
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public sendOnTextChanged(II)V
    .locals 1

    add-int/2addr p2, p1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 2
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7
    :cond_0
    iput-object p1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    :cond_1
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setFrame()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 4
    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v6

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public showSuggestions()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 4
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    return-void
.end method

.method public startSelectionActionMode()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 6
    new-instance v3, Landroid/widget/Editor$SelectionActionModeCallback;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 7
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 8
    :cond_3
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    .line 9
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v3, :cond_6

    .line 10
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 11
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    :cond_6
    return v0

    :cond_7
    :goto_2
    const-string v0, "TextView"

    const-string v2, "TextView does not support text selection. Action mode cancelled."

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public stopSelectionActionMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public updateCursorsPositions()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, v0, Landroid/widget/TextView;->mCursorDrawableRes:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    iput v2, p0, Landroid/widget/Editor;->mCursorCount:I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v1

    .line 5
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 6
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 7
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    .line 8
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 9
    invoke-virtual {v0, v3}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    move v7, v9

    :goto_0
    iput v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_2

    add-int v7, v5, v6

    shr-int/2addr v7, v9

    goto :goto_1

    :cond_2
    move v7, v6

    .line 10
    :goto_1
    invoke-virtual {v0, v4}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v4

    .line 11
    invoke-direct {p0, v0, v1, v3, v4}, Landroid/widget/Editor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;IZ)F

    move-result v1

    invoke-direct {p0, v2, v5, v7, v1}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 12
    iget v1, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v1, v8, :cond_3

    .line 13
    invoke-virtual {v0, v3, v4}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    invoke-direct {p0, v9, v7, v6, v0}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    :cond_3
    return-void
.end method
