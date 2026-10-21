.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$HandleType;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$SuggestionHelper;,
        Landroid/widget/Editor$SuggestionSpanInfo;,
        Landroid/widget/Editor$SuggestionInfo;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$TextRenderNode;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field private static final DEBUG_UNDO:Z = false

.field private static final DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x14

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field public static final HANDLE_TYPE_SELECTION_END:I = 0x1

.field public static final HANDLE_TYPE_SELECTION_START:I = 0x0

.field private static final LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS:F = 0.5f

.field private static final MENU_ITEM_ORDER_ASSIST:I = 0x0

.field private static final MENU_ITEM_ORDER_AUTOFILL:I = 0xa

.field private static final MENU_ITEM_ORDER_COPY:I = 0x5

.field private static final MENU_ITEM_ORDER_CUT:I = 0x4

.field private static final MENU_ITEM_ORDER_PASTE:I = 0x6

.field private static final MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0xb

.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64

.field private static final MENU_ITEM_ORDER_REDO:I = 0x3

.field private static final MENU_ITEM_ORDER_REPLACE:I = 0x9

.field private static final MENU_ITEM_ORDER_SELECT_ALL:I = 0x8

.field private static final MENU_ITEM_ORDER_SHARE:I = 0x7

.field private static final MENU_ITEM_ORDER_UNDO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TAP_STATE_DOUBLE_TAP:I = 0x2

.field private static final TAP_STATE_FIRST_TAP:I = 0x1

.field private static final TAP_STATE_INITIAL:I = 0x0

.field private static final TAP_STATE_TRIPLE_CLICK:I = 0x3

.field private static final UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final UNSET_LINE:I = -0x1

.field private static final UNSET_X_VALUE:I = -0x1


# instance fields
.field mAllowUndo:Z

.field private mBlink:Landroid/widget/Editor$Blink;

.field private mContextMenuAnchorX:F

.field private mContextMenuAnchorY:F

.field private mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field private final mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field mCursorVisible:Z

.field mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mDiscardNextActionUp:Z

.field mError:Ljava/lang/CharSequence;

.field private mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field private final mHapticTextHandleEnabled:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field private mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mIsBeingLongClicked:Z

.field mIsInsertionActionModeStartPending:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field private mLastButtonState:I

.field private mLastDownPositionX:F

.field private mLastDownPositionY:F

.field private mLastTouchUpTime:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field private mPreserveSelection:Z

.field final mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field private mRestartActionModeOnNextRefresh:Z

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

.field private mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field mShowSoftInputOnFocus:Z

.field private mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field private final mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field private mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTapState:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextActionMode:Landroid/view/ActionMode;

.field mTextIsSelectable:Z

.field private mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private final mTextView:Landroid/widget/TextView;

.field mTouchFocusSelected:Z

.field final mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final mUndoManager:Landroid/content/UndoManager;

.field private mUndoOwner:Landroid/content/UndoOwner;

.field private mUpdateWordIteratorText:Z

.field private mWordIterator:Landroid/text/method/WordIterator;

.field private mWordIteratorWithText:Landroid/text/method/WordIterator;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/UndoManager;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 10
    .line 11
    const-string v1, "Editor"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 18
    .line 19
    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 28
    .line 29
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroid/widget/Editor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput v1, p0, Landroid/widget/Editor;->mInputType:I

    .line 38
    .line 39
    iput-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    iput-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    iput v1, p0, Landroid/widget/Editor;->mTapState:I

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    iput-wide v2, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    .line 53
    .line 54
    new-instance v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-direct {v0, p0, v2}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 61
    .line 62
    new-instance v0, Landroid/widget/Editor$1;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 68
    .line 69
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 70
    .line 71
    new-instance v0, Landroid/widget/Editor$SuggestionHelper;

    .line 72
    .line 73
    invoke-direct {v0, p0, v2}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    .line 77
    .line 78
    new-instance v0, Landroid/widget/Editor$4;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Landroid/widget/Editor$4;-><init>(Landroid/widget/Editor;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 84
    .line 85
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 95
    .line 96
    invoke-direct {v0, p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const v0, 0x112005a

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput-boolean p1, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    .line 117
    .line 118
    return-void
.end method

.method public static synthetic access$100(Landroid/widget/Editor;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/widget/Editor;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public static synthetic access$1200(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V

    return-void
.end method

.method public static synthetic access$1300(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method public static synthetic access$1800(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/widget/Editor;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2500(Landroid/widget/Editor;)Landroid/widget/Editor$InsertionPointCursorController;
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2900(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3000(Landroid/widget/Editor;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method public static synthetic access$3500(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$3502(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public static synthetic access$3600(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    return-object p0
.end method

.method public static synthetic access$4000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$4002(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic access$4100(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$4102(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic access$4300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$4302(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic access$4400(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$4500(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4600(Landroid/widget/Editor;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static synthetic access$4700(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return p0
.end method

.method public static synthetic access$4702(Landroid/widget/Editor;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return p1
.end method

.method public static synthetic access$4800(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result p0

    return p0
.end method

.method public static synthetic access$4900(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    return p0
.end method

.method public static synthetic access$5000(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic access$5200(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$5202(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic access$5300(Landroid/widget/Editor;)I
    .locals 0

    iget p0, p0, Landroid/widget/Editor;->mTapState:I

    return p0
.end method

.method public static synthetic access$5400(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$5500(Landroid/widget/Editor;Landroid/text/Layout;IF)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result p0

    return p0
.end method

.method public static synthetic access$5600(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    return-void
.end method

.method public static synthetic access$5700(Landroid/widget/Editor;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordEnd(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$5800(Landroid/widget/Editor;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordStart(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$5900(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$6000(Landroid/widget/Editor;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result p0

    return p0
.end method

.method public static synthetic access$6100(Landroid/widget/Editor;)F
    .locals 0

    iget p0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    return p0
.end method

.method public static synthetic access$6200(Landroid/widget/Editor;)F
    .locals 0

    iget p0, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    return p0
.end method

.method public static synthetic access$6300(Landroid/widget/Editor;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$6400(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$6500(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    return-void
.end method

.method public static synthetic access$6600(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentParagraph()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$6700(Landroid/widget/Editor;II)J
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$6802(Landroid/widget/Editor;Landroid/widget/Editor$CorrectionHighlighter;)Landroid/widget/Editor$CorrectionHighlighter;
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    return-object p1
.end method

.method public static synthetic access$6900(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    return-object p0
.end method

.method public static synthetic access$7300(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-object p0
.end method

.method public static synthetic access$7500(Ljava/lang/CharSequence;II)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$900(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result p0

    return p0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v3, 0x1050187

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    new-instance v0, Landroid/text/StaticLayout;

    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 39
    .line 40
    const/high16 v9, 0x3f800000    # 1.0f

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v11, 0x1

    .line 44
    move-object v4, v0

    .line 45
    move-object v5, p2

    .line 46
    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 47
    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    const/4 p3, 0x0

    .line 51
    :goto_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-ge p3, v3, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0, p3}, Landroid/text/Layout;->getLineWidth(I)F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    add-int/lit8 p3, p3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    float-to-double p2, p2

    .line 69
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    .line 70
    .line 71
    .line 72
    move-result-wide p2

    .line 73
    double-to-int p2, p2

    .line 74
    add-int/2addr v1, p2

    .line 75
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    add-int/2addr p2, v2

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .locals 6

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    sub-float/2addr p2, v0

    .line 4
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 18
    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-float v1, v0

    .line 44
    sub-float v1, p2, v1

    .line 45
    .line 46
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    sub-int/2addr v2, v3

    .line 59
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    sub-int/2addr v2, v3

    .line 66
    int-to-float v3, v2

    .line 67
    const/high16 v4, 0x3f800000    # 1.0f

    .line 68
    .line 69
    sub-float v5, v3, v4

    .line 70
    .line 71
    cmpl-float v5, v1, v5

    .line 72
    .line 73
    if-ltz v5, :cond_2

    .line 74
    .line 75
    add-int/2addr v2, v0

    .line 76
    iget-object p2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 77
    .line 78
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    sub-int/2addr p1, p2

    .line 81
    sub-int/2addr v2, p1

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    cmpg-float p1, p1, v4

    .line 88
    .line 89
    if-lez p1, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    const/high16 p1, 0x100000

    .line 104
    .line 105
    sub-int/2addr p1, v0

    .line 106
    int-to-float p1, p1

    .line 107
    add-float/2addr v3, v4

    .line 108
    cmpg-float p1, p1, v3

    .line 109
    .line 110
    if-gtz p1, :cond_3

    .line 111
    .line 112
    cmpg-float p1, p2, v4

    .line 113
    .line 114
    if-gtz p1, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    float-to-int p1, p2

    .line 118
    iget-object p2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 119
    .line 120
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 121
    .line 122
    sub-int v2, p1, p2

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    :goto_1
    iget-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 126
    .line 127
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    sub-int v2, v0, p1

    .line 130
    .line 131
    :goto_2
    return v2
.end method

.method private discardTextDisplayLists()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    if-ge v0, v2, :cond_2

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_1
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/RenderNode;->discardDisplayList()V

    .line 28
    .line 29
    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/text/Spannable;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    check-cast v0, Landroid/text/Spannable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-class v2, Landroid/text/style/SuggestionSpan;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 25
    .line 26
    :goto_0
    array-length v1, v0

    .line 27
    if-ge v3, v1, :cond_1

    .line 28
    .line 29
    aget-object v1, v0, v3

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    and-int/lit8 v2, v1, 0x1

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    and-int/lit8 v2, v1, 0x2

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    and-int/lit8 v1, v1, -0x2

    .line 44
    .line 45
    aget-object v2, v0, v3

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    int-to-float v3, p2

    .line 11
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_1
    iget v3, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 15
    .line 16
    if-ge v0, v3, :cond_2

    .line 17
    .line 18
    iget-object v3, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    aget-object v3, v3, v0

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    if-eqz v1, :cond_3

    .line 29
    .line 30
    neg-int p2, p2

    .line 31
    int-to-float p2, p2

    .line 32
    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    .line 34
    .line 35
    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 24

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    .line 12
    .line 13
    .line 14
    move-result v14

    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    .line 16
    .line 17
    .line 18
    move-result v15

    .line 19
    if-gez v15, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    move-object/from16 v0, p2

    .line 23
    .line 24
    move-object/from16 v1, p1

    .line 25
    .line 26
    move-object/from16 v2, p3

    .line 27
    .line 28
    move-object/from16 v3, p4

    .line 29
    .line 30
    move/from16 v4, p5

    .line 31
    .line 32
    move v5, v14

    .line 33
    move v6, v15

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 35
    .line 36
    .line 37
    instance-of v0, v13, Landroid/text/DynamicLayout;

    .line 38
    .line 39
    if-eqz v0, :cond_c

    .line 40
    .line 41
    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const-class v0, Landroid/widget/Editor$TextRenderNode;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, [Landroid/widget/Editor$TextRenderNode;

    .line 52
    .line 53
    iput-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 54
    .line 55
    :cond_1
    move-object v10, v13

    .line 56
    check-cast v10, Landroid/text/DynamicLayout;

    .line 57
    .line 58
    invoke-virtual {v10}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-virtual {v10}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    .line 63
    .line 64
    .line 65
    move-result-object v16

    .line 66
    invoke-virtual {v10}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-virtual {v10}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-virtual {v10}, Landroid/text/DynamicLayout;->getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const/4 v5, -0x1

    .line 79
    const/4 v4, 0x0

    .line 80
    const/4 v3, 0x1

    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    move v0, v4

    .line 84
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-ge v0, v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v10, v1}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eq v1, v5, :cond_2

    .line 105
    .line 106
    iget-object v2, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 107
    .line 108
    aget-object v1, v2, v1

    .line 109
    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    iput-boolean v3, v1, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 113
    .line 114
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    invoke-static {v9, v4, v8, v14}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-gez v0, :cond_4

    .line 122
    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    neg-int v0, v0

    .line 126
    :cond_4
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    move v2, v0

    .line 131
    move/from16 v17, v4

    .line 132
    .line 133
    :goto_1
    if-ge v2, v8, :cond_8

    .line 134
    .line 135
    aget v0, v16, v2

    .line 136
    .line 137
    if-lt v2, v7, :cond_5

    .line 138
    .line 139
    if-eq v0, v5, :cond_5

    .line 140
    .line 141
    iget-object v1, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 142
    .line 143
    aget-object v0, v1, v0

    .line 144
    .line 145
    if-eqz v0, :cond_5

    .line 146
    .line 147
    iput-boolean v3, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 148
    .line 149
    :cond_5
    aget v0, v9, v2

    .line 150
    .line 151
    if-ge v0, v14, :cond_6

    .line 152
    .line 153
    move/from16 v18, v2

    .line 154
    .line 155
    move/from16 v19, v3

    .line 156
    .line 157
    move/from16 v20, v4

    .line 158
    .line 159
    move-object v12, v6

    .line 160
    move v13, v7

    .line 161
    move/from16 v21, v8

    .line 162
    .line 163
    move-object/from16 v22, v9

    .line 164
    .line 165
    move/from16 v23, v14

    .line 166
    .line 167
    move-object v14, v10

    .line 168
    goto :goto_2

    .line 169
    :cond_6
    move-object/from16 v0, p0

    .line 170
    .line 171
    move-object/from16 v1, p1

    .line 172
    .line 173
    move/from16 v18, v2

    .line 174
    .line 175
    move-object/from16 v2, p2

    .line 176
    .line 177
    move/from16 v19, v3

    .line 178
    .line 179
    move-object/from16 v3, p3

    .line 180
    .line 181
    move/from16 v20, v4

    .line 182
    .line 183
    move-object/from16 v4, p4

    .line 184
    .line 185
    move v12, v5

    .line 186
    move/from16 v5, p5

    .line 187
    .line 188
    move-object v12, v6

    .line 189
    move-object v6, v9

    .line 190
    move v13, v7

    .line 191
    move-object/from16 v7, v16

    .line 192
    .line 193
    move/from16 v21, v8

    .line 194
    .line 195
    move/from16 v8, v18

    .line 196
    .line 197
    move-object/from16 v22, v9

    .line 198
    .line 199
    move/from16 v9, v21

    .line 200
    .line 201
    move/from16 v23, v14

    .line 202
    .line 203
    move-object v14, v10

    .line 204
    move/from16 v10, v17

    .line 205
    .line 206
    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    .line 207
    .line 208
    .line 209
    move-result v17

    .line 210
    aget v0, v22, v18

    .line 211
    .line 212
    if-lt v0, v15, :cond_7

    .line 213
    .line 214
    add-int/lit8 v2, v18, 0x1

    .line 215
    .line 216
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    move v13, v8

    .line 221
    goto :goto_3

    .line 222
    :cond_7
    :goto_2
    add-int/lit8 v2, v18, 0x1

    .line 223
    .line 224
    move-object v6, v12

    .line 225
    move v7, v13

    .line 226
    move-object v10, v14

    .line 227
    move/from16 v3, v19

    .line 228
    .line 229
    move/from16 v4, v20

    .line 230
    .line 231
    move/from16 v8, v21

    .line 232
    .line 233
    move-object/from16 v9, v22

    .line 234
    .line 235
    move/from16 v14, v23

    .line 236
    .line 237
    const/4 v5, -0x1

    .line 238
    move-object/from16 v12, p1

    .line 239
    .line 240
    move-object/from16 v13, p2

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_8
    move/from16 v20, v4

    .line 244
    .line 245
    move-object v12, v6

    .line 246
    move/from16 v21, v8

    .line 247
    .line 248
    move-object/from16 v22, v9

    .line 249
    .line 250
    move-object v14, v10

    .line 251
    move/from16 v13, v21

    .line 252
    .line 253
    :goto_3
    if-eqz v12, :cond_b

    .line 254
    .line 255
    move/from16 v10, v17

    .line 256
    .line 257
    move/from16 v15, v20

    .line 258
    .line 259
    :goto_4
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-ge v15, v0, :cond_b

    .line 264
    .line 265
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Ljava/lang/Integer;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    invoke-virtual {v14, v8}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    const/4 v9, -0x1

    .line 280
    if-eq v0, v9, :cond_a

    .line 281
    .line 282
    iget-object v1, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 283
    .line 284
    aget-object v0, v1, v0

    .line 285
    .line 286
    if-eqz v0, :cond_a

    .line 287
    .line 288
    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 289
    .line 290
    if-eqz v0, :cond_9

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_9
    move/from16 v17, v9

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    .line 297
    .line 298
    move-object/from16 v1, p1

    .line 299
    .line 300
    move-object/from16 v2, p2

    .line 301
    .line 302
    move-object/from16 v3, p3

    .line 303
    .line 304
    move-object/from16 v4, p4

    .line 305
    .line 306
    move/from16 v5, p5

    .line 307
    .line 308
    move-object/from16 v6, v22

    .line 309
    .line 310
    move-object/from16 v7, v16

    .line 311
    .line 312
    move/from16 v17, v9

    .line 313
    .line 314
    move/from16 v9, v21

    .line 315
    .line 316
    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    .line 317
    .line 318
    .line 319
    move-result v10

    .line 320
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_b
    invoke-virtual {v14, v13}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    .line 324
    .line 325
    .line 326
    goto :goto_7

    .line 327
    :cond_c
    move-object v0, v12

    .line 328
    move-object v1, v13

    .line 329
    move v2, v14

    .line 330
    invoke-virtual {v1, v0, v2, v15}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 331
    .line 332
    .line 333
    :goto_7
    return-void
.end method

.method private drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p7

    .line 6
    .line 7
    aget v3, p6, p8

    .line 8
    .line 9
    aget v4, v2, p8

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    if-ne v4, v5, :cond_0

    .line 15
    .line 16
    move v5, v6

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v5, v7

    .line 19
    :goto_0
    if-eqz v5, :cond_2

    .line 20
    .line 21
    move/from16 v5, p9

    .line 22
    .line 23
    move/from16 v8, p10

    .line 24
    .line 25
    invoke-direct {v1, v2, v5, v8}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    aput v4, v2, p8

    .line 30
    .line 31
    iget-object v2, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 32
    .line 33
    aget-object v2, v2, v4

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iput-boolean v6, v2, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v2, v4, 0x1

    .line 40
    .line 41
    move v8, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move/from16 v8, p10

    .line 44
    .line 45
    :goto_1
    iget-object v2, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 46
    .line 47
    aget-object v5, v2, v4

    .line 48
    .line 49
    if-nez v5, :cond_3

    .line 50
    .line 51
    new-instance v5, Landroid/widget/Editor$TextRenderNode;

    .line 52
    .line 53
    const-string v9, "Text "

    .line 54
    .line 55
    invoke-static {v9, v4}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-direct {v5, v9}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    aput-object v5, v2, v4

    .line 63
    .line 64
    :cond_3
    iget-object v2, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 65
    .line 66
    aget-object v2, v2, v4

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-object v5, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 73
    .line 74
    aget-object v5, v5, v4

    .line 75
    .line 76
    iget-object v9, v5, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    .line 77
    .line 78
    iget-boolean v5, v5, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 79
    .line 80
    if-nez v5, :cond_4

    .line 81
    .line 82
    if-eqz v2, :cond_9

    .line 83
    .line 84
    :cond_4
    if-nez p8, :cond_5

    .line 85
    .line 86
    move v5, v7

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    add-int/lit8 v5, p8, -0x1

    .line 89
    .line 90
    aget v5, p6, v5

    .line 91
    .line 92
    add-int/2addr v5, v6

    .line 93
    :goto_2
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineTop(I)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    iget-object v11, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    iget-object v12, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {v12}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-eqz v12, :cond_7

    .line 114
    .line 115
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    .line 116
    .line 117
    .line 118
    const/4 v12, 0x1

    .line 119
    move v13, v5

    .line 120
    :goto_3
    if-gt v13, v3, :cond_6

    .line 121
    .line 122
    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineLeft(I)F

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    invoke-static {v11, v14}, Ljava/lang/Math;->min(FF)F

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineRight(I)F

    .line 131
    .line 132
    .line 133
    move-result v14

    .line 134
    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    add-int/lit8 v13, v13, 0x1

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    float-to-int v11, v11

    .line 142
    const/high16 v13, 0x3f000000    # 0.5f

    .line 143
    .line 144
    add-float/2addr v12, v13

    .line 145
    float-to-int v12, v12

    .line 146
    move v15, v12

    .line 147
    move v12, v11

    .line 148
    move v11, v15

    .line 149
    goto :goto_4

    .line 150
    :cond_7
    move v12, v7

    .line 151
    :goto_4
    if-eqz v2, :cond_8

    .line 152
    .line 153
    sub-int v2, v11, v12

    .line 154
    .line 155
    sub-int v13, v10, v6

    .line 156
    .line 157
    invoke-virtual {v9, v2, v13}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    neg-int v13, v12

    .line 162
    int-to-float v13, v13

    .line 163
    neg-int v14, v6

    .line 164
    int-to-float v14, v14

    .line 165
    :try_start_0
    invoke-virtual {v2, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2, v5, v3}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 169
    .line 170
    .line 171
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 172
    .line 173
    aget-object v0, v0, v4

    .line 174
    .line 175
    iput-boolean v7, v0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .line 177
    invoke-virtual {v9, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9, v7}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    invoke-virtual {v9, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v9, v7}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_8
    :goto_5
    invoke-virtual {v9, v12, v6, v11, v10}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 193
    .line 194
    .line 195
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 196
    .line 197
    aget-object v0, v0, v4

    .line 198
    .line 199
    iput-boolean v7, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 200
    .line 201
    :cond_9
    move-object/from16 v0, p1

    .line 202
    .line 203
    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 204
    .line 205
    invoke-virtual {v0, v9}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 206
    .line 207
    .line 208
    return v8
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_e

    .line 3
    .line 4
    if-nez p5, :cond_0

    .line 5
    .line 6
    goto/16 :goto_4

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    const/4 v2, -0x2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eq p2, v2, :cond_b

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-gez p2, :cond_2

    .line 26
    .line 27
    const/4 p2, -0x1

    .line 28
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 29
    .line 30
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 31
    .line 32
    move p2, v0

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    add-int/2addr p3, p4

    .line 35
    instance-of v4, v1, Landroid/text/Spanned;

    .line 36
    .line 37
    if-eqz v4, :cond_5

    .line 38
    .line 39
    move-object v4, v1

    .line 40
    check-cast v4, Landroid/text/Spanned;

    .line 41
    .line 42
    const-class v5, Landroid/text/ParcelableSpan;

    .line 43
    .line 44
    invoke-interface {v4, p2, p3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    array-length v6, v5

    .line 49
    :cond_3
    :goto_0
    if-lez v6, :cond_5

    .line 50
    .line 51
    add-int/lit8 v6, v6, -0x1

    .line 52
    .line 53
    aget-object v7, v5, v6

    .line 54
    .line 55
    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ge v7, p2, :cond_4

    .line 60
    .line 61
    move p2, v7

    .line 62
    :cond_4
    aget-object v7, v5, v6

    .line 63
    .line 64
    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-le v7, p3, :cond_3

    .line 69
    .line 70
    move p3, v7

    .line 71
    goto :goto_0

    .line 72
    :cond_5
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 73
    .line 74
    sub-int p4, p3, p4

    .line 75
    .line 76
    iput p4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 77
    .line 78
    if-le p2, v2, :cond_6

    .line 79
    .line 80
    move p2, v2

    .line 81
    goto :goto_1

    .line 82
    :cond_6
    if-gez p2, :cond_7

    .line 83
    .line 84
    move p2, v0

    .line 85
    :cond_7
    :goto_1
    if-le p3, v2, :cond_8

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_8
    if-gez p3, :cond_9

    .line 89
    .line 90
    move v2, v0

    .line 91
    goto :goto_2

    .line 92
    :cond_9
    move v2, p3

    .line 93
    :goto_2
    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 94
    .line 95
    and-int/2addr p1, v3

    .line 96
    if-eqz p1, :cond_a

    .line 97
    .line 98
    invoke-interface {v1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_a
    invoke-static {v1, p2, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_b
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 113
    .line 114
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 115
    .line 116
    const-string p1, ""

    .line 117
    .line 118
    iput-object p1, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 119
    .line 120
    :goto_3
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 121
    .line 122
    const/16 p1, 0x800

    .line 123
    .line 124
    invoke-static {v1, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_c

    .line 129
    .line 130
    iget p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 131
    .line 132
    or-int/lit8 p1, p1, 0x2

    .line 133
    .line 134
    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 135
    .line 136
    :cond_c
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/widget/TextView;->isSingleLine()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_d

    .line 143
    .line 144
    iget p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 145
    .line 146
    or-int/2addr p1, v3

    .line 147
    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 148
    .line 149
    :cond_d
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 150
    .line 151
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 158
    .line 159
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    iput p1, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 166
    .line 167
    return v3

    .line 168
    :cond_e
    :goto_4
    return v0
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_0
    return v1
.end method

.method private findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/text/Editable;

    .line 8
    .line 9
    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ltz v1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    iget v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 21
    .line 22
    iget v2, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 23
    .line 24
    const-class v3, Landroid/text/style/SuggestionSpan;

    .line 25
    .line 26
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 31
    .line 32
    array-length v2, v1

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-ge v3, v2, :cond_4

    .line 35
    .line 36
    aget-object v4, v1, v3

    .line 37
    .line 38
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 43
    .line 44
    if-eq v5, v6, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 52
    .line 53
    if-eq v5, v6, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v5, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Landroid/text/style/SuggestionSpan;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    return-object v4

    .line 65
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 p1, 0x0

    .line 69
    return-object p1
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    :goto_0
    if-ge p3, v0, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_1
    if-ge v2, p2, :cond_1

    .line 9
    .line 10
    aget v3, p1, v2

    .line 11
    .line 12
    if-ne v3, p3, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 20
    .line 21
    add-int/lit8 p3, p3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return p3

    .line 25
    :cond_3
    iget-object p1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, [Landroid/widget/Editor$TextRenderNode;

    .line 33
    .line 34
    iput-object p1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 35
    .line 36
    return v0
.end method

.method private getCharClusterRange(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    return-wide v0

    .line 28
    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 29
    .line 30
    if-ltz v0, :cond_1

    .line 31
    .line 32
    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {p1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    return-wide v0

    .line 45
    :cond_1
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    return-wide v0
.end method

.method private getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gt p2, v1, :cond_4

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_4

    .line 20
    .line 21
    if-gez p2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    sub-int v1, v0, p2

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x2

    .line 31
    if-lt v1, v2, :cond_1

    .line 32
    .line 33
    return v0

    .line 34
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-float v0, v0

    .line 41
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    int-to-float v2, v2

    .line 52
    const/high16 v3, 0x3f000000    # 0.5f

    .line 53
    .line 54
    mul-float/2addr v2, v3

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineTop(I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    int-to-float v4, v4

    .line 61
    add-float/2addr v4, v0

    .line 62
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    int-to-float v5, v5

    .line 67
    add-float/2addr v5, v0

    .line 68
    sub-float/2addr v5, v2

    .line 69
    add-float/2addr v4, v2

    .line 70
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    add-int/lit8 v1, v1, -0x1

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    int-to-float v5, v5

    .line 81
    add-float/2addr v5, v0

    .line 82
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    int-to-float p1, p1

    .line 87
    add-float/2addr p1, v0

    .line 88
    add-float/2addr p1, v2

    .line 89
    sub-float/2addr v5, v2

    .line 90
    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    cmpg-float v0, p3, v4

    .line 95
    .line 96
    if-gtz v0, :cond_2

    .line 97
    .line 98
    add-int/lit8 p2, p2, -0x1

    .line 99
    .line 100
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    cmpl-float p1, p3, p1

    .line 106
    .line 107
    if-ltz p1, :cond_3

    .line 108
    .line 109
    add-int/lit8 p2, p2, 0x1

    .line 110
    .line 111
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    :cond_3
    :goto_0
    return p2

    .line 116
    :cond_4
    :goto_1
    return v0
.end method

.method private getErrorX()I
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v2, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x1

    .line 22
    const/high16 v4, 0x3f000000    # 0.5f

    .line 23
    .line 24
    const/high16 v5, 0x41c80000    # 25.0f

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    if-eq v1, v3, :cond_1

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget v6, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 32
    .line 33
    :cond_0
    neg-int v1, v6

    .line 34
    div-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    mul-float/2addr v0, v5

    .line 37
    add-float/2addr v0, v4

    .line 38
    float-to-int v0, v0

    .line 39
    add-int/2addr v1, v0

    .line 40
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    sub-int/2addr v0, v2

    .line 53
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    sub-int/2addr v0, v2

    .line 60
    add-int/2addr v0, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget v6, v2, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 65
    .line 66
    :cond_2
    div-int/lit8 v6, v6, 0x2

    .line 67
    .line 68
    mul-float/2addr v0, v5

    .line 69
    add-float/2addr v0, v4

    .line 70
    float-to-int v0, v0

    .line 71
    sub-int/2addr v6, v0

    .line 72
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    add-int/2addr v0, v6

    .line 79
    :goto_0
    return v0
.end method

.method private getErrorY()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sub-int/2addr v1, v2

    .line 20
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    sub-int/2addr v1, v0

    .line 28
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object v3, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eq v2, v4, :cond_0

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget v5, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    if-eqz v3, :cond_1

    .line 46
    .line 47
    iget v5, v3, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 48
    .line 49
    :cond_1
    :goto_0
    const/4 v2, 0x2

    .line 50
    invoke-static {v1, v5, v2, v0}, Landroid/app/m;->b(IIII)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 65
    .line 66
    add-int/2addr v0, v5

    .line 67
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    sub-int/2addr v0, v2

    .line 74
    const/high16 v2, 0x40000000    # 2.0f

    .line 75
    .line 76
    mul-float/2addr v1, v2

    .line 77
    const/high16 v2, 0x3f000000    # 0.5f

    .line 78
    .line 79
    add-float/2addr v1, v2

    .line 80
    float-to-int v1, v1

    .line 81
    sub-int/2addr v0, v1

    .line 82
    return v0
.end method

.method private getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

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
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Landroid/widget/Editor$InsertionPointCursorController;

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 17
    .line 18
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 30
    .line 31
    return-object v0
.end method

.method private getLastTapPosition()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-le v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :cond_0
    return v0

    .line 34
    :cond_1
    const/4 v0, -0x1

    .line 35
    return v0
.end method

.method private getLastTouchOffsets()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method private getNextCursorOffset(IZ)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ne p2, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    :goto_0
    return p1
.end method

.method private getParagraphsRange(II)J
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    return-wide p1

    .line 15
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    :goto_0
    const/16 v2, 0xa

    .line 26
    .line 27
    if-lez p1, :cond_2

    .line 28
    .line 29
    add-int/lit8 v3, p1, -0x1

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/lit8 v3, v3, -0x1

    .line 36
    .line 37
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v3, v2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    :goto_2
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    add-int/lit8 v3, v3, -0x1

    .line 56
    .line 57
    if-ge p2, v3, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineEnd(I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    add-int/lit8 v3, v3, -0x1

    .line 64
    .line 65
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-ne v3, v2, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    :goto_3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineEnd(I)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-static {p1, p2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 84
    .line 85
    .line 86
    move-result-wide p1

    .line 87
    return-wide p1
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/Editor$PositionListener;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 14
    .line 15
    return-object v0
.end method

.method private getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/SelectionActionModeHelper;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/SelectionActionModeHelper;-><init>(Landroid/widget/Editor;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    .line 13
    .line 14
    return-object v0
.end method

.method private getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x10900f4

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sub-int v1, p2, p1

    .line 20
    .line 21
    const/16 v2, 0x14

    .line 22
    .line 23
    if-le v1, v2, :cond_0

    .line 24
    .line 25
    add-int/lit8 p2, p1, 0x14

    .line 26
    .line 27
    invoke-direct {p0, p2}, Landroid/widget/Editor;->getCharClusterRange(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-static {v1, v2}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 51
    .line 52
    .line 53
    const/16 p1, 0x10

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 56
    .line 57
    .line 58
    const/16 p1, 0x11

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    const/4 p2, -0x2

    .line 66
    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-virtual {v0, p2, p2}, Landroid/view/View;->measure(II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, p1, p1, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 92
    .line 93
    .line 94
    new-instance p1, Landroid/view/View$DragShadowBuilder;

    .line 95
    .line 96
    invoke-direct {p1, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    return-object p1

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string p2, "Unable to inflate text drag thumbnail"

    .line 103
    .line 104
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method private getWordEnd(I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    const/4 v1, -0x1

    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    return p1

    .line 40
    :cond_1
    return v0
.end method

.method private getWordIteratorWithText()Landroid/text/method/WordIterator;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/text/method/WordIterator;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 39
    .line 40
    .line 41
    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 44
    .line 45
    return-object v0
.end method

.method private getWordStart(I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    const/4 v1, -0x1

    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    return p1

    .line 40
    :cond_1
    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private hideError()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 18
    .line 19
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private invalidateActionMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/text/Spannable;

    .line 8
    .line 9
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-class v3, Landroid/text/style/SuggestionSpan;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    move v2, v1

    .line 31
    :goto_0
    array-length v3, v0

    .line 32
    if-ge v2, v3, :cond_1

    .line 33
    .line 34
    aget-object v3, v0, v2

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    and-int/2addr v3, v4

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    return v4

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return v1
.end method

.method private isOffsetVisible(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    float-to-int p1, p1

    .line 24
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/2addr v2, p1

    .line 31
    int-to-float p1, v2

    .line 32
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v2, v1

    .line 39
    int-to-float v1, v2

    .line 40
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method private isPositionOnText(FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineLeft(I)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    cmpg-float v2, p1, v2

    .line 28
    .line 29
    if-gez v2, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineRight(I)F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    cmpl-float p1, p1, p2

    .line 37
    .line 38
    if-lez p1, :cond_2

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    const/4 p1, 0x1

    .line 42
    return p1
.end method

.method private static isValidRange(Ljava/lang/CharSequence;II)Z
    .locals 0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-gt p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needsToSelectAllToSelectWordOrParagraph()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    and-int/lit8 v2, v0, 0xf

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff0

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-eq v2, v3, :cond_2

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    if-eq v2, v3, :cond_2

    .line 29
    .line 30
    const/16 v2, 0x10

    .line 31
    .line 32
    if-eq v0, v2, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    if-eq v0, v2, :cond_2

    .line 37
    .line 38
    const/16 v2, 0xd0

    .line 39
    .line 40
    if-eq v0, v2, :cond_2

    .line 41
    .line 42
    const/16 v2, 0xb0

    .line 43
    .line 44
    if-ne v0, v2, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    return v0

    .line 49
    :cond_2
    :goto_0
    return v1
.end method

.method private replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 6
    .line 7
    invoke-direct {v0, v2}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/text/Editable;

    .line 21
    .line 22
    invoke-interface {v3, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-interface {v3, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-ltz v4, :cond_6

    .line 31
    .line 32
    if-gt v5, v4, :cond_1

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const-class v7, Landroid/text/style/SuggestionSpan;

    .line 41
    .line 42
    invoke-interface {v3, v4, v5, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, [Landroid/text/style/SuggestionSpan;

    .line 47
    .line 48
    array-length v8, v7

    .line 49
    new-array v9, v8, [I

    .line 50
    .line 51
    new-array v10, v8, [I

    .line 52
    .line 53
    new-array v11, v8, [I

    .line 54
    .line 55
    const/4 v12, 0x0

    .line 56
    move v13, v12

    .line 57
    :goto_0
    if-ge v13, v8, :cond_3

    .line 58
    .line 59
    aget-object v14, v7, v13

    .line 60
    .line 61
    invoke-interface {v3, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    aput v15, v9, v13

    .line 66
    .line 67
    invoke-interface {v3, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v15

    .line 71
    aput v15, v10, v13

    .line 72
    .line 73
    invoke-interface {v3, v14}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    aput v15, v11, v13

    .line 78
    .line 79
    invoke-virtual {v14}, Landroid/text/style/SuggestionSpan;->getFlags()I

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    and-int/lit8 v16, v15, 0x2

    .line 84
    .line 85
    if-eqz v16, :cond_2

    .line 86
    .line 87
    and-int/lit8 v15, v15, -0x3

    .line 88
    .line 89
    and-int/lit8 v15, v15, -0x2

    .line 90
    .line 91
    invoke-virtual {v14, v15}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iget v13, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    .line 104
    .line 105
    invoke-virtual {v2, v3, v6, v13}, Landroid/text/style/SuggestionSpan;->notifySelection(Landroid/content/Context;Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    iget v3, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 109
    .line 110
    iget v13, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 111
    .line 112
    iget-object v14, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    .line 113
    .line 114
    invoke-virtual {v14, v3, v13}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-virtual {v13, v4, v5, v3}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iget v1, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    .line 132
    .line 133
    aput-object v6, v2, v1

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    sub-int v2, v5, v4

    .line 140
    .line 141
    sub-int/2addr v1, v2

    .line 142
    :goto_1
    if-ge v12, v8, :cond_5

    .line 143
    .line 144
    aget v2, v9, v12

    .line 145
    .line 146
    if-gt v2, v4, :cond_4

    .line 147
    .line 148
    aget v3, v10, v12

    .line 149
    .line 150
    if-lt v3, v5, :cond_4

    .line 151
    .line 152
    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 153
    .line 154
    aget-object v13, v7, v12

    .line 155
    .line 156
    add-int/2addr v3, v1

    .line 157
    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    aget v14, v11, v12

    .line 166
    .line 167
    invoke-virtual {v6, v13, v2, v3, v14}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    .line 168
    .line 169
    .line 170
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_5
    add-int/2addr v5, v1

    .line 174
    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    iget-object v2, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-virtual {v2, v1, v1}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    .line 187
    .line 188
    .line 189
    :cond_6
    :goto_2
    return-void
.end method

.method private resumeBlink()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private selectCurrentParagraph()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-direct {p0, v0, v2}, Landroid/widget/Editor;->getParagraphsRange(II)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-ge v0, v2, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/text/Spannable;

    .line 57
    .line 58
    invoke-static {v1, v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    return v0

    .line 63
    :cond_2
    return v1
.end method

.method private selectCurrentWordAndStartDrag()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    return v1

    .line 40
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    return v0
.end method

.method private sendUpdateSelection()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 6
    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    instance-of v0, v0, Landroid/text/Spannable;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/text/Spannable;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    move v6, v0

    .line 54
    move v5, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, -0x1

    .line 57
    move v5, v0

    .line 58
    move v6, v5

    .line 59
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/widget/TextView$Drawables;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private shouldBlink()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-gez v2, :cond_2

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    if-ne v0, v2, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_3
    :goto_0
    return v1
.end method

.method private shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const/16 v0, 0x2002

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    xor-int/2addr v0, v2

    .line 18
    const/4 v2, 0x1

    .line 19
    and-int/2addr v0, v2

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    move v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, v1

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    if-ne v3, v2, :cond_3

    .line 32
    .line 33
    :cond_2
    if-nez v0, :cond_3

    .line 34
    .line 35
    return v2

    .line 36
    :cond_3
    const/4 v0, 0x2

    .line 37
    if-ne v3, v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v1
.end method

.method private shouldOfferToShowSuggestions()Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/text/Spannable;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    check-cast v0, Landroid/text/Spannable;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-class v4, Landroid/text/style/SuggestionSpan;

    .line 28
    .line 29
    invoke-interface {v0, v1, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, [Landroid/text/style/SuggestionSpan;

    .line 34
    .line 35
    array-length v5, v4

    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    const/4 v5, 0x1

    .line 40
    if-ne v1, v3, :cond_4

    .line 41
    .line 42
    move v0, v2

    .line 43
    :goto_0
    array-length v1, v4

    .line 44
    if-ge v0, v1, :cond_3

    .line 45
    .line 46
    aget-object v1, v4, v0

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    array-length v1, v1

    .line 53
    if-lez v1, :cond_2

    .line 54
    .line 55
    return v5

    .line 56
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return v2

    .line 60
    :cond_4
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    move v7, v2

    .line 81
    move v8, v7

    .line 82
    move v9, v8

    .line 83
    move v10, v9

    .line 84
    :goto_1
    array-length v11, v4

    .line 85
    if-ge v7, v11, :cond_9

    .line 86
    .line 87
    aget-object v11, v4, v7

    .line 88
    .line 89
    invoke-interface {v0, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    aget-object v12, v4, v7

    .line 94
    .line 95
    invoke-interface {v0, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-lt v1, v11, :cond_8

    .line 108
    .line 109
    if-le v1, v12, :cond_5

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    if-nez v8, :cond_7

    .line 113
    .line 114
    aget-object v8, v4, v7

    .line 115
    .line 116
    invoke-virtual {v8}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    array-length v8, v8

    .line 121
    if-lez v8, :cond_6

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    move v8, v2

    .line 125
    goto :goto_3

    .line 126
    :cond_7
    :goto_2
    move v8, v5

    .line 127
    :goto_3
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    :cond_8
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_9
    if-nez v8, :cond_a

    .line 139
    .line 140
    return v2

    .line 141
    :cond_a
    if-lt v6, v10, :cond_b

    .line 142
    .line 143
    return v2

    .line 144
    :cond_b
    if-lt v3, v6, :cond_d

    .line 145
    .line 146
    if-le v9, v10, :cond_c

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_c
    return v5

    .line 150
    :cond_d
    :goto_5
    return v2
.end method

.method private showError()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v2, 0x10900ff

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    .line 36
    .line 37
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 48
    .line 49
    new-instance v3, Landroid/widget/Editor$ErrorPopup;

    .line 50
    .line 51
    const/high16 v4, 0x43480000    # 200.0f

    .line 52
    .line 53
    mul-float/2addr v4, v2

    .line 54
    const/high16 v5, 0x3f000000    # 0.5f

    .line 55
    .line 56
    add-float/2addr v4, v5

    .line 57
    float-to-int v4, v4

    .line 58
    const/high16 v6, 0x42480000    # 50.0f

    .line 59
    .line 60
    mul-float/2addr v2, v6

    .line 61
    add-float/2addr v2, v5

    .line 62
    float-to-int v2, v2

    .line 63
    invoke-direct {v3, v0, v4, v2}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    .line 64
    .line 65
    .line 66
    iput-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/TextView;

    .line 84
    .line 85
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 86
    .line 87
    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 88
    .line 89
    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 98
    .line 99
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method private showFloatingToolbar()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 12
    .line 13
    int-to-long v3, v0

    .line 14
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private startDragAndDrop()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->onSelectionDrag()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Landroid/widget/Editor$DragLocalState;

    .line 41
    .line 42
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-direct {v3, v4, v0, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor;->getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/16 v1, 0x100

    .line 54
    .line 55
    invoke-virtual {v4, v2, v0, v3, v1}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method private stopTextActionModeWithPreservingSelection()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 7
    .line 8
    :cond_0
    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 15
    .line 16
    return-void
.end method

.method private suspendBlink()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    if-le v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/text/Spannable;

    .line 26
    .line 27
    invoke-static {v3, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 28
    .line 29
    .line 30
    move v5, v1

    .line 31
    move v1, v0

    .line 32
    move v0, v5

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-lt v4, v0, :cond_2

    .line 46
    .line 47
    if-ge v3, v1, :cond_2

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    :cond_2
    return v2
.end method

.method private updateCursorPosition(IIIF)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 14
    .line 15
    iget v2, v2, Landroid/widget/TextView;->mCursorDrawableRes:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    aput-object v1, v0, p1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    aget-object p1, v0, p1

    .line 26
    .line 27
    invoke-direct {p0, p1, p4}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    sub-int/2addr p2, v2

    .line 40
    add-int/2addr v0, p4

    .line 41
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    add-int/2addr p3, v1

    .line 44
    invoke-virtual {p1, p4, p2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, -0x1

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    new-instance p3, Landroid/widget/SpellChecker;

    .line 42
    .line 43
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-direct {p3, v0}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    .line 46
    .line 47
    .line 48
    iput-object p3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 49
    .line 50
    :cond_0
    iget-object p3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 51
    .line 52
    if-eqz p3, :cond_1

    .line 53
    .line 54
    invoke-virtual {p3, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method private updateTapState(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    const/16 v2, 0x2002

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget v2, p0, Landroid/widget/Editor;->mTapState:I

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v2, v1, :cond_0

    .line 18
    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    iget-wide v6, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    .line 28
    .line 29
    sub-long/2addr v4, v6

    .line 30
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    int-to-long v6, p1

    .line 35
    cmp-long p1, v4, v6

    .line 36
    .line 37
    if-gtz p1, :cond_2

    .line 38
    .line 39
    iget p1, p0, Landroid/widget/Editor;->mTapState:I

    .line 40
    .line 41
    if-ne p1, v1, :cond_1

    .line 42
    .line 43
    iput v3, p0, Landroid/widget/Editor;->mTapState:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x3

    .line 47
    iput p1, p0, Landroid/widget/Editor;->mTapState:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iput v1, p0, Landroid/widget/Editor;->mTapState:I

    .line 51
    .line 52
    :cond_3
    :goto_0
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    iput-wide v0, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    .line 59
    .line 60
    :cond_4
    return-void
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 6
    .line 7
    const/16 v2, 0x12

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Landroid/widget/Editor$SpanController;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {v1, p0, v4}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 28
    .line 29
    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public adjustInputType(ZZZZ)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0xf

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_2

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    :cond_0
    and-int/lit16 p1, v0, -0xff1

    .line 13
    .line 14
    or-int/lit16 p1, p1, 0x80

    .line 15
    .line 16
    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    .line 17
    .line 18
    :cond_1
    if-eqz p3, :cond_3

    .line 19
    .line 20
    iget p1, p0, Landroid/widget/Editor;->mInputType:I

    .line 21
    .line 22
    and-int/lit16 p1, p1, -0xff1

    .line 23
    .line 24
    or-int/lit16 p1, p1, 0xe0

    .line 25
    .line 26
    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    and-int/lit8 p1, v0, 0xf

    .line 30
    .line 31
    const/4 p2, 0x2

    .line 32
    if-ne p1, p2, :cond_3

    .line 33
    .line 34
    if-eqz p4, :cond_3

    .line 35
    .line 36
    and-int/lit16 p1, v0, -0xff1

    .line 37
    .line 38
    or-int/lit8 p1, p1, 0x10

    .line 39
    .line 40
    iput p1, p0, Landroid/widget/Editor;->mInputType:I

    .line 41
    .line 42
    :cond_3
    :goto_0
    return-void
.end method

.method public beginBatchEdit()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 9
    .line 10
    add-int/2addr v2, v0

    .line 11
    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 12
    .line 13
    if-ne v2, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 17
    .line 18
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 19
    .line 20
    iget-boolean v2, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 25
    .line 26
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, -0x1

    .line 40
    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 41
    .line 42
    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 43
    .line 44
    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public canRedo()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Landroid/content/UndoOwner;

    .line 3
    .line 4
    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v3

    .line 23
    :goto_0
    return v0
.end method

.method public canUndo()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Landroid/content/UndoOwner;

    .line 3
    .line 4
    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v3

    .line 23
    :goto_0
    return v0
.end method

.method public checkField()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

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
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const-string v0, "TextView"

    .line 21
    .line 22
    const-string v1, "TextView does not support text selection. Selection cancelled."

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public createInputContentTypeIfNeeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/Editor$InputContentType;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public createInputMethodStateIfNeeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public ensureEndedBatchEdit()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 13
    .line 14
    .line 15
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

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result p1

    return p1
.end method

.method public finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean p1, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidateCursor()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/widget/TextView;->hasSelection()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_2
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-interface {p1}, Landroid/widget/Editor$CursorController;->isActive()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    invoke-interface {p1}, Landroid/widget/Editor$CursorController;->isCursorBeingModified()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    invoke-interface {p1}, Landroid/widget/Editor$CursorController;->show()V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void
.end method

.method public forgetUndoRedo()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Landroid/content/UndoOwner;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public getCursorDrawable()[Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Landroid/widget/Editor$SelectionModifierCursorController;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 17
    .line 18
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 30
    .line 31
    return-object v0
.end method

.method public getSuggestionsPopupWindowForTesting()Landroid/widget/Editor$SuggestionsPopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    return-object v0
.end method

.method public getTextActionMode()Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/text/method/WordIterator;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 19
    .line 20
    return-object v0
.end method

.method public hasInsertionController()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method public hasSelectionController()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideCursorAndSpanControllers()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public hideFloatingToolbar(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 13
    .line 14
    int-to-long v1, p1

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public hideInsertionPointCursorController()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public invalidateActionModeAsync()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    return-void
.end method

.method public invalidateHandlesAndActionMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->invalidateHandles()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->invalidateHandle()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public invalidateTextDisplayList()V
    .locals 3

    .line 12
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 14
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

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
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object p2, v3, p2

    const/4 v3, 0x1

    iput-boolean v3, p2, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

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
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroid/widget/Editor$Blink;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 35
    .line 36
    const-wide/16 v2, 0x1f4

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 7
    .line 8
    .line 9
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-direct {p0, v1, v0, v2}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->access$600(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_6

    .line 12
    .line 13
    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 24
    .line 25
    iget v1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    .line 26
    .line 27
    iget v2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/widget/TextView;->canSelectText()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-lt v0, v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-gt v0, v1, :cond_2

    .line 73
    .line 74
    move v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move v1, v3

    .line 77
    :goto_0
    if-nez v1, :cond_3

    .line 78
    .line 79
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Landroid/text/Spannable;

    .line 86
    .line 87
    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v1, 0x5

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    new-array v0, v1, [Landroid/widget/Editor$SuggestionInfo;

    .line 101
    .line 102
    move v4, v3

    .line 103
    :goto_1
    const/4 v5, 0x0

    .line 104
    if-ge v4, v1, :cond_4

    .line 105
    .line 106
    new-instance v6, Landroid/widget/Editor$SuggestionInfo;

    .line 107
    .line 108
    invoke-direct {v6, v5}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$1;)V

    .line 109
    .line 110
    .line 111
    aput-object v6, v0, v4

    .line 112
    .line 113
    add-int/lit8 v4, v4, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    const/16 v4, 0x9

    .line 117
    .line 118
    const v6, 0x104055f

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, v3, v3, v4, v6}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget-object v6, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    .line 126
    .line 127
    invoke-virtual {v6, v0, v5}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    move v6, v3

    .line 132
    :goto_2
    if-ge v6, v5, :cond_5

    .line 133
    .line 134
    aget-object v7, v0, v6

    .line 135
    .line 136
    iget-object v8, v7, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    .line 137
    .line 138
    invoke-interface {v4, v3, v3, v6, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    new-instance v9, Landroid/widget/Editor$3;

    .line 143
    .line 144
    invoke-direct {v9, p0, v7}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 148
    .line 149
    .line 150
    add-int/lit8 v6, v6, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    const/4 v0, 0x2

    .line 154
    const v4, 0x104063b

    .line 155
    .line 156
    .line 157
    const v5, 0x1020032

    .line 158
    .line 159
    .line 160
    invoke-interface {p1, v3, v5, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const/16 v4, 0x7a

    .line 165
    .line 166
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 171
    .line 172
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {v4}, Landroid/widget/TextView;->canUndo()Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 183
    .line 184
    .line 185
    const/4 v0, 0x3

    .line 186
    const v4, 0x104054d

    .line 187
    .line 188
    .line 189
    const v5, 0x1020033

    .line 190
    .line 191
    .line 192
    invoke-interface {p1, v3, v5, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 197
    .line 198
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-virtual {v4}, Landroid/widget/TextView;->canRedo()Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 209
    .line 210
    .line 211
    const/4 v0, 0x4

    .line 212
    const v4, 0x1040003

    .line 213
    .line 214
    .line 215
    const v5, 0x1020020

    .line 216
    .line 217
    .line 218
    invoke-interface {p1, v3, v5, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const/16 v4, 0x78

    .line 223
    .line 224
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 229
    .line 230
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 235
    .line 236
    invoke-virtual {v4}, Landroid/widget/TextView;->canCut()Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 241
    .line 242
    .line 243
    const v0, 0x1020021

    .line 244
    .line 245
    .line 246
    const v4, 0x1040001

    .line 247
    .line 248
    .line 249
    invoke-interface {p1, v3, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    const/16 v1, 0x63

    .line 254
    .line 255
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iget-object v1, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 260
    .line 261
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 266
    .line 267
    invoke-virtual {v1}, Landroid/widget/TextView;->canCopy()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 272
    .line 273
    .line 274
    const/4 v0, 0x6

    .line 275
    const v1, 0x104000b

    .line 276
    .line 277
    .line 278
    const v4, 0x1020022

    .line 279
    .line 280
    .line 281
    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    const/16 v1, 0x76

    .line 286
    .line 287
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 292
    .line 293
    invoke-virtual {v1}, Landroid/widget/TextView;->canPaste()Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iget-object v1, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 302
    .line 303
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 304
    .line 305
    .line 306
    const/16 v0, 0xb

    .line 307
    .line 308
    const v1, 0x1040019

    .line 309
    .line 310
    .line 311
    const v4, 0x1020031

    .line 312
    .line 313
    .line 314
    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 319
    .line 320
    invoke-virtual {v1}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object v1, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 329
    .line 330
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 331
    .line 332
    .line 333
    const/4 v0, 0x7

    .line 334
    const v1, 0x10405b3

    .line 335
    .line 336
    .line 337
    const v4, 0x1020035

    .line 338
    .line 339
    .line 340
    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 345
    .line 346
    invoke-virtual {v1}, Landroid/widget/TextView;->canShare()Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    iget-object v1, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 355
    .line 356
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 357
    .line 358
    .line 359
    const/16 v0, 0x8

    .line 360
    .line 361
    const v1, 0x104000d

    .line 362
    .line 363
    .line 364
    const v4, 0x102001f

    .line 365
    .line 366
    .line 367
    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    const/16 v1, 0x61

    .line 372
    .line 373
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 378
    .line 379
    invoke-virtual {v1}, Landroid/widget/TextView;->canSelectAllText()Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    iget-object v1, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 388
    .line 389
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 390
    .line 391
    .line 392
    const/16 v0, 0xa

    .line 393
    .line 394
    const v1, 0x104001a

    .line 395
    .line 396
    .line 397
    const v4, 0x1020043

    .line 398
    .line 399
    .line 400
    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 405
    .line 406
    invoke-virtual {v0}, Landroid/widget/TextView;->canRequestAutofill()Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    iget-object v0, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 415
    .line 416
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 417
    .line 418
    .line 419
    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 420
    .line 421
    :cond_6
    :goto_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Landroid/widget/Editor;->discardTextDisplayLists()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 71
    .line 72
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget v3, v2, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-boolean v3, v2, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 36
    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    iget-boolean v2, v2, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2, p1, p5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    if-eqz p3, :cond_3

    .line 54
    .line 55
    if-ne v0, v1, :cond_3

    .line 56
    .line 57
    iget v0, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 58
    .line 59
    if-lez v0, :cond_3

    .line 60
    .line 61
    invoke-direct {p0, p1, p5}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 62
    .line 63
    .line 64
    const/4 p3, 0x0

    .line 65
    :cond_3
    move-object v3, p3

    .line 66
    iget-object p3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {p3}, Landroid/view/View;->canHaveDisplayList()Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-eqz p3, :cond_4

    .line 79
    .line 80
    move-object v0, p0

    .line 81
    move-object v1, p1

    .line 82
    move-object v2, p2

    .line 83
    move-object v4, p4

    .line 84
    move v5, p5

    .line 85
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p2, p1, v3, p4, p5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    .line 13
    .line 14
    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    move v5, v4

    .line 25
    :goto_0
    if-ge v5, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v6, v7}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .line 43
    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/DragAndDropPermissions;->release()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 60
    .line 61
    .line 62
    :try_start_1
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    instance-of v2, p1, Landroid/widget/Editor$DragLocalState;

    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    check-cast p1, Landroid/widget/Editor$DragLocalState;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 p1, 0x0

    .line 88
    :goto_1
    const/4 v2, 0x1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    iget-object v3, p1, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    .line 92
    .line 93
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 94
    .line 95
    if-ne v3, v5, :cond_4

    .line 96
    .line 97
    move v3, v2

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move v3, v4

    .line 100
    :goto_2
    if-eqz v3, :cond_5

    .line 101
    .line 102
    iget v5, p1, Landroid/widget/Editor$DragLocalState;->start:I

    .line 103
    .line 104
    if-lt v1, v5, :cond_5

    .line 105
    .line 106
    iget v5, p1, Landroid/widget/Editor$DragLocalState;->end:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    if-ge v1, v5, :cond_5

    .line 109
    .line 110
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    :try_start_2
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Landroid/text/Spannable;

    .line 138
    .line 139
    invoke-static {v6, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 140
    .line 141
    .line 142
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v6, v1, v1, v0}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    if-eqz v3, :cond_7

    .line 148
    .line 149
    iget v0, p1, Landroid/widget/Editor$DragLocalState;->start:I

    .line 150
    .line 151
    iget p1, p1, Landroid/widget/Editor$DragLocalState;->end:I

    .line 152
    .line 153
    if-gt v1, v0, :cond_6

    .line 154
    .line 155
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    sub-int/2addr v1, v5

    .line 166
    add-int/2addr v0, v1

    .line 167
    add-int/2addr p1, v1

    .line 168
    :cond_6
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 169
    .line 170
    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 171
    .line 172
    .line 173
    add-int/lit8 p1, v0, -0x1

    .line 174
    .line 175
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 180
    .line 181
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    add-int/2addr v0, v2

    .line 190
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    add-int/lit8 v1, p1, 0x1

    .line 195
    .line 196
    if-le v0, v1, :cond_7

    .line 197
    .line 198
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 199
    .line 200
    invoke-virtual {v3, p1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_7

    .line 213
    .line 214
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_7

    .line 223
    .line 224
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 225
    .line 226
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->deleteText_internal(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    .line 228
    .line 229
    :cond_7
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :catchall_0
    move-exception p1

    .line 241
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 242
    .line 243
    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 247
    .line 248
    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 249
    .line 250
    .line 251
    throw p1

    .line 252
    :catchall_1
    move-exception p1

    .line 253
    if-eqz v1, :cond_8

    .line 254
    .line 255
    invoke-virtual {v1}, Landroid/view/DragAndDropPermissions;->release()V

    .line 256
    .line 257
    .line 258
    :cond_8
    throw p1
.end method

.method public onFocusChanged(ZI)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_a

    .line 11
    .line 12
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ne v0, v1, :cond_0

    .line 43
    .line 44
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v1, v3

    .line 47
    :goto_0
    iget-boolean v4, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    move v1, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v1, v3

    .line 64
    :goto_1
    iput-boolean v1, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 65
    .line 66
    iget-boolean v1, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    if-ltz p1, :cond_2

    .line 71
    .line 72
    if-gez v0, :cond_8

    .line 73
    .line 74
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-ltz v1, :cond_3

    .line 79
    .line 80
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Landroid/text/Spannable;

    .line 87
    .line 88
    invoke-static {v4, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Landroid/text/Spannable;

    .line 106
    .line 107
    invoke-interface {v1, v4, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 108
    .line 109
    .line 110
    :cond_4
    iget-object p2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/widget/TextView;->isInExtractedMode()Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-nez p2, :cond_5

    .line 117
    .line 118
    iget-boolean p2, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 119
    .line 120
    if-eqz p2, :cond_6

    .line 121
    .line 122
    :cond_5
    if-ltz p1, :cond_6

    .line 123
    .line 124
    if-ltz v0, :cond_6

    .line 125
    .line 126
    iget-object p2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 127
    .line 128
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    check-cast p2, Landroid/text/Spannable;

    .line 133
    .line 134
    invoke-static {p2, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 135
    .line 136
    .line 137
    :cond_6
    iget-boolean p1, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 138
    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/widget/TextView;->selectAllText()Z

    .line 144
    .line 145
    .line 146
    :cond_7
    iput-boolean v2, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 147
    .line 148
    :cond_8
    iput-boolean v3, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 149
    .line 150
    iput-boolean v3, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 151
    .line 152
    iget-object p1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 153
    .line 154
    if-eqz p1, :cond_9

    .line 155
    .line 156
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 157
    .line 158
    .line 159
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_a
    iget-object p1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 164
    .line 165
    if-eqz p1, :cond_b

    .line 166
    .line 167
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 168
    .line 169
    .line 170
    :cond_b
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/widget/TextView;->isInExtractedMode()Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_c

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 184
    .line 185
    .line 186
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_c
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/view/View;->isTemporarilyDetached()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_d

    .line 200
    .line 201
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_d
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 206
    .line 207
    .line 208
    :goto_2
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    .line 209
    .line 210
    .line 211
    :goto_3
    iget-object p1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 212
    .line 213
    if-eqz p1, :cond_e

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 216
    .line 217
    .line 218
    :cond_e
    :goto_4
    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 5
    .line 6
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Editor;->shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    iput-boolean v0, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateTapState(Landroid/view/MotionEvent;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 53
    .line 54
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 74
    .line 75
    iput-boolean p1, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 76
    .line 77
    :cond_4
    return-void
.end method

.method public onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper;->resetSelection(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-lez v0, :cond_5

    .line 62
    .line 63
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    check-cast v1, Landroid/text/Spannable;

    .line 78
    .line 79
    invoke-static {v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_5

    .line 94
    .line 95
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    iget-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    :cond_3
    new-instance p1, Landroid/widget/Editor$2;

    .line 111
    .line 112
    invoke-direct {p1, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 116
    .line 117
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    int-to-long v1, v1

    .line 124
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_5

    .line 133
    .line 134
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/TextView;->hasSelection()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_5

    .line 20
    .line 21
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_5

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/widget/Editor$Blink;->cancel()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p1, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 59
    .line 60
    .line 61
    :cond_5
    :goto_0
    return-void
.end method

.method public performLongClick(Z)Z
    .locals 4

    .line 1
    const/16 v0, 0x275

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 7
    .line 8
    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 9
    .line 10
    invoke-direct {p0, v2, v3}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 21
    .line 22
    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 23
    .line 24
    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 25
    .line 26
    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/text/Spannable;

    .line 37
    .line 38
    invoke-static {v2, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 46
    .line 47
    .line 48
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 49
    .line 50
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-static {p1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 58
    .line 59
    .line 60
    move p1, v1

    .line 61
    :cond_0
    if-nez p1, :cond_2

    .line 62
    .line 63
    iget-object v2, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 v2, 0x2

    .line 83
    invoke-static {p1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 100
    .line 101
    .line 102
    :goto_0
    move p1, v1

    .line 103
    :cond_2
    if-nez p1, :cond_3

    .line 104
    .line 105
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v2, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 118
    .line 119
    .line 120
    :cond_3
    return p1
.end method

.method public prepareCursorControllers()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 20
    .line 21
    const/16 v1, 0x3e8

    .line 22
    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x7cf

    .line 26
    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v0, v3

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move v0, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v0, v3

    .line 45
    :goto_1
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    move v1, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move v1, v3

    .line 56
    :goto_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/widget/TextView;->textCanBeSelected()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    move v2, v3

    .line 70
    :goto_3
    iput-boolean v2, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 71
    .line 72
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 88
    .line 89
    :cond_5
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 90
    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 104
    .line 105
    :cond_6
    return-void
.end method

.method public redo()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Landroid/content/UndoOwner;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 11
    .line 12
    aput-object v3, v1, v2

    .line 13
    .line 14
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 15
    .line 16
    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public refreshTextActionMode()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

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
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    :cond_1
    if-eqz v3, :cond_3

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    :cond_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    if-eqz v0, :cond_7

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget-boolean v0, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 54
    .line 55
    if-eqz v0, :cond_a

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    if-eqz v2, :cond_6

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_6
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_7
    if-eqz v3, :cond_9

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_8

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_8
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 93
    .line 94
    if-eqz v0, :cond_a

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_9
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 101
    .line 102
    .line 103
    :cond_a
    :goto_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 104
    .line 105
    return-void
.end method

.method public replace()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v1, v0

    .line 33
    div-int/lit8 v1, v1, 0x2

    .line 34
    .line 35
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/text/Spannable;

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public reportExtractedText()Z
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 11
    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    :cond_0
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 15
    .line 16
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 17
    .line 18
    iget-object v3, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    if-eqz v10, :cond_2

    .line 27
    .line 28
    iget v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 29
    .line 30
    if-gez v4, :cond_1

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    const/4 v2, -0x2

    .line 35
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 36
    .line 37
    :cond_1
    iget v6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 38
    .line 39
    iget v7, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 40
    .line 41
    iget v8, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 42
    .line 43
    iget-object v9, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 44
    .line 45
    move-object v4, p0

    .line 46
    move-object v5, v3

    .line 47
    invoke-direct/range {v4 .. v9}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 54
    .line 55
    iget v3, v3, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 56
    .line 57
    iget-object v4, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 58
    .line 59
    invoke-virtual {v10, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 60
    .line 61
    .line 62
    const/4 v2, -0x1

    .line 63
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 64
    .line 65
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 66
    .line 67
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 68
    .line 69
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    return v0

    .line 73
    :cond_2
    return v1
.end method

.method public restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1, v0, p1}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 20
    .line 21
    const-string v0, "Editor"

    .line 22
    .line 23
    invoke-virtual {p1, v0, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 28
    .line 29
    return-void
.end method

.method public saveInstanceState()Landroid/os/ParcelableParcel;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/ParcelableParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public selectCurrentWord()Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ltz v0, :cond_7

    .line 37
    .line 38
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-le v0, v3, :cond_2

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_2
    if-ltz v2, :cond_7

    .line 53
    .line 54
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-le v2, v3, :cond_3

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_3
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Landroid/text/Spanned;

    .line 75
    .line 76
    const-class v4, Landroid/text/style/URLSpan;

    .line 77
    .line 78
    invoke-interface {v3, v0, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, [Landroid/text/style/URLSpan;

    .line 83
    .line 84
    array-length v4, v3

    .line 85
    const/4 v5, 0x1

    .line 86
    if-lt v4, v5, :cond_4

    .line 87
    .line 88
    aget-object v0, v3, v1

    .line 89
    .line 90
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Landroid/text/Spanned;

    .line 97
    .line 98
    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Landroid/text/Spanned;

    .line 109
    .line 110
    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v3, v4, v0, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->getBeginning(I)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-virtual {v3, v2}, Landroid/text/method/WordIterator;->getEnd(I)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    const/4 v3, -0x1

    .line 137
    if-eq v4, v3, :cond_6

    .line 138
    .line 139
    if-eq v2, v3, :cond_6

    .line 140
    .line 141
    if-ne v4, v2, :cond_5

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    move v0, v2

    .line 145
    move v2, v4

    .line 146
    goto :goto_1

    .line 147
    :cond_6
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/Editor;->getCharClusterRange(I)J

    .line 148
    .line 149
    .line 150
    move-result-wide v2

    .line 151
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    move v6, v2

    .line 160
    move v2, v0

    .line 161
    move v0, v6

    .line 162
    :goto_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 163
    .line 164
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Landroid/text/Spannable;

    .line 169
    .line 170
    invoke-static {v3, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 171
    .line 172
    .line 173
    if-le v0, v2, :cond_7

    .line 174
    .line 175
    move v1, v5

    .line 176
    :cond_7
    :goto_2
    return v1
.end method

.method public sendOnTextChanged(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    add-int/2addr p2, p1

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/widget/SelectionActionModeHelper;->onTextChanged(II)V

    .line 7
    .line 8
    .line 9
    add-int/2addr p3, p1

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p0, p1, p3, p2}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setContextMenuAnchor(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    .line 2
    .line 3
    iput p2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 4
    .line 5
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 9
    .line 10
    if-nez p1, :cond_2

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iput-object p1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 32
    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return-void
.end method

.method public setFrame()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 19
    .line 20
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public setRestartActionModeOnNextRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    return-void
.end method

.method public startInsertionActionMode()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-direct {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public startSelectionActionModeAsync(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SelectionActionModeHelper;->startActionModeAsync(Z)V

    return-void
.end method

.method public startSelectionActionModeInternal()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

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
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v0, p0, v2}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v3, v0, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move v2, v1

    .line 50
    :goto_0
    if-eqz v2, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/widget/TextView;->isTextSelectable()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    iget-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-virtual {v0, v3, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 74
    .line 75
    .line 76
    :cond_4
    return v2

    .line 77
    :cond_5
    :goto_1
    return v1
.end method

.method public stopTextActionMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public undo()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Landroid/content/UndoOwner;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 11
    .line 12
    aput-object v3, v1, v2

    .line 13
    .line 14
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 15
    .line 16
    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public updateCursorsPositions()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    iget v1, v0, Landroid/widget/TextView;->mCursorDrawableRes:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iput v2, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    add-int/lit8 v5, v3, 0x1

    .line 30
    .line 31
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineTop(I)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {v0, v1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/4 v7, 0x2

    .line 40
    const/4 v8, 0x1

    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    move v6, v7

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v6, v8

    .line 46
    :goto_0
    iput v6, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 47
    .line 48
    if-ne v6, v7, :cond_2

    .line 49
    .line 50
    add-int v6, v4, v5

    .line 51
    .line 52
    shr-int/2addr v6, v8

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v6, v5

    .line 55
    :goto_1
    invoke-virtual {v0, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    invoke-direct {p0, v2, v4, v6, v9}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 64
    .line 65
    .line 66
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 67
    .line 68
    if-ne v2, v7, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-direct {p0, v8, v6, v5, v0}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method
