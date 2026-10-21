.class Landroid/accounts/ChooseAccountTypeActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/ChooseAccountTypeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/accounts/ChooseAccountTypeActivity;


# direct methods
.method public constructor <init>(Landroid/accounts/ChooseAccountTypeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/accounts/ChooseAccountTypeActivity$1;->this$0:Landroid/accounts/ChooseAccountTypeActivity;

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
    iget-object p1, p0, Landroid/accounts/ChooseAccountTypeActivity$1;->this$0:Landroid/accounts/ChooseAccountTypeActivity;

    invoke-static {p1}, Landroid/accounts/ChooseAccountTypeActivity;->access$000(Landroid/accounts/ChooseAccountTypeActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    iget-object p2, p2, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object p2, p2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/accounts/ChooseAccountTypeActivity;->access$100(Landroid/accounts/ChooseAccountTypeActivity;Ljava/lang/String;)V

    return-void
.end method
