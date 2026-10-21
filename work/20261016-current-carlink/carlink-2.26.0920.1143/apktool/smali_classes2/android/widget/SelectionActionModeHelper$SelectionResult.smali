.class final Landroid/widget/SelectionActionModeHelper$SelectionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionResult"
.end annotation


# instance fields
.field private final mClassification:Landroid/view/textclassifier/TextClassification;

.field private final mEnd:I

.field private final mSelection:Landroid/view/textclassifier/TextSelection;

.field private final mStart:I


# direct methods
.method public constructor <init>(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mStart:I

    .line 5
    .line 6
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mEnd:I

    .line 7
    .line 8
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/view/textclassifier/TextClassification;

    .line 13
    .line 14
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mClassification:Landroid/view/textclassifier/TextClassification;

    .line 15
    .line 16
    iput-object p4, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mSelection:Landroid/view/textclassifier/TextSelection;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic access$000(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I
    .locals 0

    iget p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mStart:I

    return p0
.end method

.method public static synthetic access$100(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I
    .locals 0

    iget p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mEnd:I

    return p0
.end method

.method public static synthetic access$200(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;
    .locals 0

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mClassification:Landroid/view/textclassifier/TextClassification;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextSelection;
    .locals 0

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mSelection:Landroid/view/textclassifier/TextSelection;

    return-object p0
.end method
