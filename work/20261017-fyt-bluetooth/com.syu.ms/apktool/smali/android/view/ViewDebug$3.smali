.class final Landroid/view/ViewDebug$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/ViewDebug$ViewOperation<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic post([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/view/ViewDebug$3;->post([Ljava/lang/Void;)V

    return-void
.end method

.method public varargs post([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pre()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewDebug$3;->pre()[Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public pre()[Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/view/ViewDebug$3;->run([Ljava/lang/Void;)V

    return-void
.end method

.method public varargs run([Ljava/lang/Void;)V
    .locals 4

    .line 2
    iget-object p1, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    iget v0, p1, Landroid/view/View;->mLeft:I

    iget v1, p1, Landroid/view/View;->mTop:I

    iget v2, p1, Landroid/view/View;->mRight:I

    iget v3, p1, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
