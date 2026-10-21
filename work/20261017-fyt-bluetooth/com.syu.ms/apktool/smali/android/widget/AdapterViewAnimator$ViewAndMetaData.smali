.class Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewAndMetaData"
.end annotation


# instance fields
.field public adapterPosition:I

.field public itemId:J

.field public relativeIndex:I

.field public final synthetic this$0:Landroid/widget/AdapterViewAnimator;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 3
    iput p3, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    .line 4
    iput p4, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->adapterPosition:I

    .line 5
    iput-wide p5, p0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->itemId:J

    return-void
.end method
