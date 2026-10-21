.class Landroid/view/View$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/k<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/view/View;

.field public final synthetic val$id:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/View$2;->this$0:Landroid/view/View;

    iput p2, p0, Landroid/view/View$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Z
    .locals 1

    .line 2
    iget p1, p1, Landroid/view/View;->mNextFocusForwardId:I

    iget v0, p0, Landroid/view/View$2;->val$id:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View$2;->apply(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
