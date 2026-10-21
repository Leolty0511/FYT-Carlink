.class Landroid/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)V

    .line 2
    iget-object v0, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x10202f8

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    :goto_0
    return-void
.end method
