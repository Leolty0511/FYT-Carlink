.class Landroid/accounts/ChooseTypeAndAccountActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/ChooseTypeAndAccountActivity;->populateUIAccountList([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/accounts/ChooseTypeAndAccountActivity;


# direct methods
.method public constructor <init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity$1;->this$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity$1;->this$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    invoke-static {p1, p3}, Landroid/accounts/ChooseTypeAndAccountActivity;->access$002(Landroid/accounts/ChooseTypeAndAccountActivity;I)I

    .line 2
    iget-object p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity$1;->this$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    invoke-static {p1}, Landroid/accounts/ChooseTypeAndAccountActivity;->access$100(Landroid/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
