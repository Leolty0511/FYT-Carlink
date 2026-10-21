.class Landroid/widget/Editor$InputMethodState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodState"
.end annotation


# instance fields
.field public mBatchEditNesting:I

.field public mChangedDelta:I

.field public mChangedEnd:I

.field public mChangedStart:I

.field public mContentChanged:Z

.field public mCursorChanged:Z

.field public mCursorRectInWindow:Landroid/graphics/Rect;

.field public final mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field public mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

.field public mSelectionModeChanged:Z

.field public mTmpOffset:[F

.field public mTmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    .line 5
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    return-void
.end method
