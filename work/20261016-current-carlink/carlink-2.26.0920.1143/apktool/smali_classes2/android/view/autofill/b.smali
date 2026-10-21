.class public final synthetic Landroid/view/autofill/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/autofill/AutofillManager;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/b;->b:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/b;->b:Landroid/view/autofill/AutofillManager;

    iget v1, p0, Landroid/view/autofill/b;->c:I

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->d(Landroid/view/autofill/AutofillManager;I)V

    return-void
.end method
