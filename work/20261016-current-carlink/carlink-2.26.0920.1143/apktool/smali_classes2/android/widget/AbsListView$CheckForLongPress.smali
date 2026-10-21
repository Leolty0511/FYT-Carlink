.class Landroid/widget/AbsListView$CheckForLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckForLongPress"
.end annotation


# static fields
.field private static final INVALID_COORD:I = -0x1


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    .line 3
    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method

.method public static synthetic access$1300(Landroid/widget/AbsListView$CheckForLongPress;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$CheckForLongPress;->setCoords(FF)V

    return-void
.end method

.method private setCoords(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    .line 2
    .line 3
    iput p2, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    .line 2
    .line 3
    iget v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4
    .line 5
    iget v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    .line 15
    .line 16
    iget v4, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 17
    .line 18
    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 19
    .line 20
    invoke-interface {v1, v4}, Landroid/widget/Adapter;->getItemId(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    invoke-virtual {p0}, Landroid/widget/AbsListView$WindowRunnnable;->sameWindow()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v9, 0x0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    .line 32
    .line 33
    iget-boolean v1, v2, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    iget v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    .line 38
    .line 39
    const/high16 v1, -0x40800000    # -1.0f

    .line 40
    .line 41
    cmpl-float v3, v7, v1

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    iget v8, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    .line 46
    .line 47
    cmpl-float v1, v8, v1

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    move-object v3, v0

    .line 52
    invoke-virtual/range {v2 .. v8}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v1, v9

    .line 63
    :goto_0
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    invoke-static {v1, v2}, Landroid/widget/AbsListView;->access$902(Landroid/widget/AbsListView;Z)Z

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    .line 72
    .line 73
    const/4 v2, -0x1

    .line 74
    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 75
    .line 76
    invoke-virtual {v1, v9}, Landroid/view/View;->setPressed(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    .line 84
    .line 85
    const/4 v1, 0x2

    .line 86
    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 87
    .line 88
    :cond_3
    :goto_1
    return-void
.end method
