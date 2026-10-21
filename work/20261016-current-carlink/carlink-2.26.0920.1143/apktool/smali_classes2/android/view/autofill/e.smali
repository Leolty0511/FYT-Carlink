.class public final synthetic Landroid/view/autofill/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/autofill/AutofillManager;

.field public final synthetic c:I

.field public final synthetic d:[Landroid/view/autofill/AutofillId;

.field public final synthetic e:Z

.field public final synthetic f:[Landroid/view/autofill/AutofillId;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/e;->b:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/e;->c:I

    iput-object p3, p0, Landroid/view/autofill/e;->d:[Landroid/view/autofill/AutofillId;

    iput-boolean p4, p0, Landroid/view/autofill/e;->e:Z

    iput-object p5, p0, Landroid/view/autofill/e;->f:[Landroid/view/autofill/AutofillId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-boolean v0, p0, Landroid/view/autofill/e;->e:Z

    iget-object v1, p0, Landroid/view/autofill/e;->f:[Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Landroid/view/autofill/e;->b:Landroid/view/autofill/AutofillManager;

    iget v3, p0, Landroid/view/autofill/e;->c:I

    iget-object v4, p0, Landroid/view/autofill/e;->d:[Landroid/view/autofill/AutofillId;

    invoke-static {v2, v3, v4, v0, v1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->h(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    return-void
.end method
