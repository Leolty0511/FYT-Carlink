.class public final Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/logging/SmartSelectionEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent$EventType;,
        Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent$ActionType;
    }
.end annotation


# static fields
.field private static final NO_VERSION_TAG:Ljava/lang/String; = ""

.field public static final OUT_OF_BOUNDS:I = 0x7fff

.field public static final OUT_OF_BOUNDS_NEGATIVE:I = -0x8000


# instance fields
.field private final mEnd:I

.field private final mEntityType:Ljava/lang/String;

.field private mEventType:I

.field private final mStart:I

.field private final mVersionTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-lt p2, p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "end cannot be less than start"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mStart:I

    .line 15
    .line 16
    iput p2, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEnd:I

    .line 17
    .line 18
    iput p3, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    .line 19
    .line 20
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEntityType:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/String;

    .line 33
    .line 34
    iput-object p1, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mVersionTag:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic access$000(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    return p0
.end method

.method public static synthetic access$100(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEnd:I

    return p0
.end method

.method public static synthetic access$200(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mStart:I

    return p0
.end method

.method public static synthetic access$300(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Z
    .locals 0

    invoke-direct {p0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->isTerminal()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEntityType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mVersionTag:Ljava/lang/String;

    return-object p0
.end method

.method private isActionType()Z
    .locals 2

    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isTerminal()Z
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->mEventType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static selectionAction(III)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    const-string v4, ""

    const-string v5, ""

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static selectionAction(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 7

    .line 2
    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v5, v0

    .line 4
    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getVersionInfo()Ljava/lang/String;

    move-result-object v6

    .line 5
    new-instance p3, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-object v1, p3

    move v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method public static selectionModified(II)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    const/4 v3, 0x2

    const-string v4, ""

    const-string v5, ""

    move-object v0, v6

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static selectionModified(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 7

    .line 2
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v5, v0

    .line 4
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getVersionInfo()Ljava/lang/String;

    move-result-object v6

    .line 5
    new-instance p2, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    const/4 v4, 0x2

    move-object v1, p2

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static selectionModified(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 7

    .line 6
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getSourceClassifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextClassifierImpl"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sub-int v0, p1, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :goto_0
    move v4, v0

    .line 8
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getEntityCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/textclassifier/TextSelection;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    move-object v5, v0

    .line 10
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getVersionInfo()Ljava/lang/String;

    move-result-object v6

    .line 11
    new-instance p2, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-object v1, p2

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static selectionStarted(I)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;
    .locals 7

    new-instance v6, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    add-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, ""

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
