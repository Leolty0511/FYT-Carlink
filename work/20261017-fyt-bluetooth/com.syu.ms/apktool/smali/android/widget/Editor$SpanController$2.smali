.class Landroid/widget/Editor$SpanController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Editor$EasyEditDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SpanController;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/widget/Editor$SpanController;


# direct methods
.method public constructor <init>(Landroid/widget/Editor$SpanController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClick(Landroid/text/style/EasyEditSpan;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    iget-object v0, v0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 2
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 3
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    .line 4
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    const/4 v4, 0x1

    invoke-static {v3, v4, p1}, Landroid/widget/Editor$SpanController;->access$1000(Landroid/widget/Editor$SpanController;ILandroid/text/style/EasyEditSpan;)V

    .line 5
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    iget-object v3, v3, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method
