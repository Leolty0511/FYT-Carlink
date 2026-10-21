.class Landroid/view/View$VisibilityChangeForAutofillHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibilityChangeForAutofillHandler"
.end annotation


# instance fields
.field private final mAfm:Landroid/view/autofill/AutofillManager;

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mAfm:Landroid/view/autofill/AutofillManager;

    .line 4
    iput-object p2, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mView:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;Landroid/view/View$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View$VisibilityChangeForAutofillHandler;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mAfm:Landroid/view/autofill/AutofillManager;

    iget-object v0, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;Z)V

    return-void
.end method
