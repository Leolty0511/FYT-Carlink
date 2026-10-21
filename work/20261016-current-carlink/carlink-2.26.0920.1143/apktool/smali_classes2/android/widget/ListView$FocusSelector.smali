.class Landroid/widget/ListView$FocusSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FocusSelector"
.end annotation


# static fields
.field private static final STATE_REQUEST_FOCUS:I = 0x3

.field private static final STATE_SET_SELECTION:I = 0x1

.field private static final STATE_WAIT_FOR_LAYOUT:I = 0x2


# instance fields
.field private mAction:I

.field private mPosition:I

.field private mPositionTop:I

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method public onLayoutComplete()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    .line 7
    .line 8
    iget v1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    .line 9
    .line 10
    iget v2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    .line 23
    .line 24
    iget-object v1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    .line 25
    .line 26
    iget v2, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 27
    .line 28
    sub-int/2addr v0, v2

    .line 29
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public setupFocusIfValid(I)Ljava/lang/Runnable;
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x3

    .line 12
    iput p1, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    .line 2
    .line 3
    iput p2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 7
    .line 8
    return-object p0
.end method
