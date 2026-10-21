.class public final synthetic Landroid/view/autofill/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/autofill/AutofillManager;

.field public final synthetic c:Landroid/view/autofill/AutofillId;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/f;->b:Landroid/view/autofill/AutofillManager;

    iput-object p2, p0, Landroid/view/autofill/f;->c:Landroid/view/autofill/AutofillId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/f;->b:Landroid/view/autofill/AutofillManager;

    iget-object v1, p0, Landroid/view/autofill/f;->c:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->c(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    return-void
.end method
