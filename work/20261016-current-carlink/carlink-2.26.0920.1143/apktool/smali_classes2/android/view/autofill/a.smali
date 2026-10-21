.class public final synthetic Landroid/view/autofill/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/autofill/AutofillManager;

.field public final synthetic c:Landroid/content/IntentSender;

.field public final synthetic d:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/a;->b:Landroid/view/autofill/AutofillManager;

    iput-object p2, p0, Landroid/view/autofill/a;->c:Landroid/content/IntentSender;

    iput-object p3, p0, Landroid/view/autofill/a;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/view/autofill/a;->c:Landroid/content/IntentSender;

    iget-object v1, p0, Landroid/view/autofill/a;->d:Landroid/content/Intent;

    iget-object v2, p0, Landroid/view/autofill/a;->b:Landroid/view/autofill/AutofillManager;

    invoke-static {v2, v0, v1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->a(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method
