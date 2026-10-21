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
.field final synthetic this$1:Landroid/widget/Editor$SpanController;


# direct methods
.method public constructor <init>(Landroid/widget/Editor$SpanController;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClick(Landroid/text/style/EasyEditSpan;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/text/Editable;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ltz v1, :cond_0

    .line 24
    .line 25
    if-ltz v2, :cond_0

    .line 26
    .line 27
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-static {v3, v4, p1}, Landroid/widget/Editor$SpanController;->access$1600(Landroid/widget/Editor$SpanController;ILandroid/text/style/EasyEditSpan;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Landroid/widget/Editor$SpanController$2;->this$1:Landroid/widget/Editor$SpanController;

    .line 34
    .line 35
    iget-object v3, v3, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    .line 36
    .line 37
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
